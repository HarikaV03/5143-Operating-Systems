import collections
from .base import Scheduler


class PriorityScheduler(Scheduler):
    """
    Static priority scheduler.

    - Lower numeric priority = higher priority.
    - Non-preemptive: runs a CPU burst to completion once dispatched.
    - Optional aging to reduce starvation.
    """

    def __init__(
        self,
        num_cpus=1,
        num_ios=1,
        verbose=True,
        processes=None,
        aging=False,
        aging_interval=5,
        aging_delta=1,
    ):
        super().__init__(
            num_cpus=num_cpus,
            num_ios=num_ios,
            verbose=verbose,
            processes=processes,
        )
        self.name = "Priority"
        self.enable_aging = bool(aging)
        self.aging_interval = int(aging_interval)
        self.aging_delta = int(aging_delta)

    def _get_insert_index(self, process):
        """
        Find index to insert process into ready_queue ordered by:
        (priority, arrival_time, pid).
        """
        key_new = (process.priority, process.arrival_time, process.pid)
        index = 0
        for p in self.ready_queue:
            key_p = (p.priority, p.arrival_time, p.pid)
            if key_p <= key_new:
                index += 1
            else:
                break
        return index

    def _enqueue_by_priority(self, process, msg, event_type, device=None):
        """Insert into ready_queue by priority and log the event."""
        process.state = "ready"
        index = self._get_insert_index(process)
        self.ready_queue.insert(index, process)
        self._record(
            msg,
            event_type=event_type,
            proc=process.pid,
            device=device,
        )

    def _apply_aging(self):
        """
        Every aging_interval ticks:
        - decrease priority (toward 0) for ready_queue processes,
        - then re-sort ready_queue.
        """
        if not self.enable_aging or self.aging_interval <= 0:
            return

        now = self.clock.now()
        if now == 0 or now % self.aging_interval != 0:
            return

        changed = False
        for p in self.ready_queue:
            if p.priority > 0:
                p.priority = max(0, p.priority - self.aging_delta)
                changed = True

        if changed:
            procs = list(self.ready_queue)
            procs.sort(key=lambda p: (p.priority, p.arrival_time, p.pid))
            self.ready_queue = collections.deque(procs)
            self._record("Aging applied to ready queue", event_type="aging")

    def add_process(self, process):
        """Handle new arrivals."""
        self._enqueue_by_priority(
            process,
            msg=f"{process.pid} added to ready queue (prio={process.priority})",
            event_type="enqueue",
        )

    def step(self):
        """
        One scheduler step:
         - tick CPUs
         - handle completed CPU bursts
         - tick IO
         - handle completed IO bursts
         - apply aging
         - dispatch ready processes
        """

        for p in self.ready_queue:
            p.wait_time += 1        # Increment wait time for processes in ready queue
        for p in self.wait_queue:
            p.io_time += 1          # Increment I/O time for processes in wait queue

        # CPU ticks
        for cpu in self.cpus:
            proc = cpu.tick()
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
                    self._enqueue_by_priority(
                        proc,
                        msg=f"{proc.pid} finished CPU → ready queue",
                        event_type="cpu_to_ready",
                        device=f"CPU{cpu.cid}",
                    )

                else:
                    proc.state = "finished"

                    proc.finish_time = self.clock.now()
                    proc.turnaround_time = proc.finish_time - proc.arrival_time
                    self.finished.append(proc)
                    self._record(
                        f"{proc.pid} finished all bursts",
                        event_type="finished",
                        proc=proc.pid,
                        device=f"CPU{cpu.cid}",
                    )

        # IO ticks
        for dev in self.io_devices:
            proc = dev.tick()
            if proc:
                burst = proc.current_burst()

                if burst and "cpu" in burst:
                    self._enqueue_by_priority(
                        proc,
                        msg=f"{proc.pid} finished I/O → ready queue",
                        event_type="io_to_ready",
                        device=f"IO{dev.did}",
                    )

                elif burst and "io" in burst:
                    proc.state = "waiting"
                    self.wait_queue.append(proc)
                    self._record(
                        f"{proc.pid} finished I/O → wait queue",
                        event_type="io_to_io",
                        proc=proc.pid,
                        device=f"IO{dev.did}",
                    )

                else:
                    proc.state = "finished"
                    proc.finish_time = self.clock.now()
                    proc.turnaround_time = proc.finish_time - proc.arrival_time
                    self.finished.append(proc)
                    self._record(
                        f"{proc.pid} finished all bursts",
                        event_type="finished",
                        proc=proc.pid,
                        device=f"IO{dev.did}",
                    )

        # Aging then dispatch
        self._apply_aging()

        for cpu in self.cpus:
            if not cpu.is_busy() and self.ready_queue:
                proc = self.ready_queue.popleft()
                cpu.assign(proc)
                self.context_switches += 1
                # Record process's first_run if it hasn't already been
                if proc.first_run is None:
                    proc.first_run = self.clock.now()
                    proc.response_time = proc.first_run - proc.arrival_time
                self._record(
                    f"{proc.pid} dispatched to CPU{cpu.cid}",
                    event_type="dispatch_cpu",
                    proc=proc.pid,
                    device=f"CPU{cpu.cid}",
                )

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

        if self.verbose:
            self._snapshot()
        self.clock.tick()
