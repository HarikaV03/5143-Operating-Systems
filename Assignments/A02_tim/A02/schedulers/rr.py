from .base import Scheduler


class RoundRobinScheduler(Scheduler):
    """
    Round Robin scheduler that extends base Scheduler.
    Uses a fixed time quantum for CPU scheduling.
    """

    def __init__(self, num_cpus=1, num_ios=1, verbose=True, processes=None, quantum=4):
        super().__init__(num_cpus=num_cpus, num_ios=num_ios, verbose=verbose, processes=processes)
        self.name = "Round Robin"
        self.time_slice = quantum

    def step(self):
        """
        Override step() to add Round Robin behavior (time quantum enforcement)
        """
        for cpu in self.cpus:
            proc = cpu.tick()

            # Quantum check
            if cpu.is_busy():
                if not hasattr(cpu.current, "quantum_used"):
                    cpu.current.quantum_used = 0
                cpu.current.quantum_used += 1

                # Preempt if quantum expired and still has bursts left
                if cpu.current.quantum_used >= self.time_slice:
                    preempted = cpu.current
                    preempted.quantum_used = 0
                    preempted.state = "ready"
                    cpu.current = None
                    self.ready_queue.append(preempted)
                    self._record(
                        f"{preempted.pid} preempted (RR quantum expired)",
                        event_type="preempt_cpu",
                        proc=preempted.pid,
                        device=f"CPU{cpu.cid}",
                    )

            # Handle process completion from base logic
            if proc:
                burst = proc.current_burst()
                if burst and "io" in burst:
                    proc.state = "waiting"
                    self.wait_queue.append(proc)
                    self._record(
                        f"{proc.pid} finished CPU → wait queue",
                        event_type="cpu_to_io",
                        proc=proc.pid,
                        device=f"CPU{cpu.cid}",
                    )
                elif burst and "cpu" in burst:
                    self.ready_queue.append(proc)
                    self._record(
                        f"{proc.pid} finished CPU → ready queue",
                        event_type="cpu_to_ready",
                        proc=proc.pid,
                        device=f"CPU{cpu.cid}",
                    )
                else:
                    proc.state = "finished"
                    self.finished.append(proc)
                    self._record(
                        f"{proc.pid} finished all bursts",
                        event_type="finished",
                        proc=proc.pid,
                        device=f"CPU{cpu.cid}",
                    )

        
        for dev in self.io_devices:
            proc = dev.tick()
            if proc:
                burst = proc.current_burst()
                if burst:
                    proc.state = "ready"
                    self.ready_queue.append(proc)
                    self._record(
                        f"{proc.pid} finished I/O → ready queue",
                        event_type="io_to_ready",
                        proc=proc.pid,
                        device=f"IO{dev.did}",
                    )
                else:
                    proc.state = "finished"
                    self.finished.append(proc)
                    self._record(
                        f"{proc.pid} finished all bursts",
                        event_type="finished",
                        proc=proc.pid,
                        device=f"IO{dev.did}",
                    )

        # Dispatch to CPUs (reset quantum_used on (re)dispatch)
        for cpu in self.cpus:
            if not cpu.is_busy() and self.ready_queue:
                proc = self.ready_queue.popleft()
                # reset per-dispatch quantum accounting
                setattr(proc, "quantum_used", 0)
                cpu.assign(proc)
                self._record(
                    f"{proc.pid} dispatched to CPU{cpu.cid}",
                    event_type="dispatch_cpu",
                    proc=proc.pid,
                    device=f"CPU{cpu.cid}",
                )

        # Dispatch to I/O devices
        for dev in self.io_devices:
            if not dev.is_busy() and self.wait_queue:
                proc = self.wait_queue.popleft()
                dev.assign(proc)
                self._record(
                    f"{proc.pid} dispatched to IO{dev.did}",
                    event_type="dispatch_io",
                    proc=proc.pid,
                    device=f"IO{dev.did}",
                )

        # Snapshot + advance clock
        if self.verbose:
            self._snapshot()
        self.clock.tick()
