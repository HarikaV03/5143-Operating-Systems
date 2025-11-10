from .base import Scheduler

class ShortestRemainingTimeFirst(Scheduler):
    '''
    Shortest Remaining Time First scheduler that extends base Scheduler.
    Uses remaining CPU burst time for scheduling.
    '''

    def __init__(self, num_cpus=1, num_ios=1, verbose=True, processes=None):
        super().__init__(num_cpus=num_cpus, num_ios=num_ios, verbose=verbose, processes=processes)
        self.name = "Shortest Remaining Time First"

    def add_process(self, process):
        """
        Add a new process to the ready queue ordered by remaining burst
        time
        Args: 
            process: Process instance to add
        Returns: None
        """
        
        process.state = "ready"     # sets the current process state to ready

        # Get index where process needs to be inserted
        index = self.get_in_order_index(process)

        self.ready_queue.insert(index, process)

        # Log the event
        self._record(
            f"{process.pid} added to ready queue",
            event_type = "enqueue",
            proc = process.pid
        )

    def step(self):
        """
        Advance the scheduler by one time unit
        Returns: None
        """
        # Iterate over each CPU and tick (decrement burst time) by 1 if not idle
        for cpu in self.cpus:

            # proc is the process that just finished its CPU burst or None
            proc = cpu.tick()
                
            # If a process finished its CPU burst, handle it.
            # This means that proc is not None
            if proc:
                burst = proc.current_burst()

                # If the next burst is I/O, move to wait queue
                # If no more bursts, move to finished
                # If next burst is CPU, move to ready queue
                if burst and "io" in burst:
                    proc.state = "waiting"
                    self.wait_queue.append(proc)
                    self._record(
                        f"{proc.pid} finished CPU{cpu.cid} → wait queue",
                        event_type="cpu_to_io",
                        proc=proc.pid,
                        device=f"CPU{cpu.cid}",
                    )

                # If the next burst is CPU, move to ready queue
                elif burst and "cpu" in burst:
                    
                    # Add process to correct location in ready_queue
                    # Get index where process needs to be inserted
                    index = self.get_in_order_index(proc)
            
                    # Inserting process in correct place
                    self.ready_queue.insert(index,proc)

                    # logs event of moving process to ready queue
                    self._record(
                        f"{proc.pid} finished CPU{cpu.cid} → ready queue",
                        event_type="cpu_to_ready",
                        proc=proc.pid,
                        device=f"CPU{cpu.cid}",
                    )
                # No more bursts, process is finished
                else:
                    proc.state = "finished"
                    self.finished.append(proc)

                    # logs event of process finishing all bursts
                    self._record(
                        f"{proc.pid} finished all bursts",
                        event_type="finished",
                        proc=proc.pid,
                        device=f"CPU{cpu.cid}",
                    )

        # Tick IO devices
        for dev in self.io_devices:
            proc = dev.tick()
            if proc:
                burst = proc.current_burst()

                # If the next burst is I/O, move to wait queue
                # If no more bursts, move to finished
                # If next burst is CPU, move to ready queue
                if burst and "cpu" in burst:
                    proc.state = "ready"
                    
                    # Get index where process needs to be inserted
                    index = self.get_in_order_index(proc)
            
                    # Inserting process in correct place
                    self.ready_queue.insert(index,proc)

                    # logs event of moving process to ready queue
                    self._record(
                        f"{proc.pid} finished I/O → ready queue",
                        event_type="io_to_ready",
                        proc=proc.pid,
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

                # else process is finished
                else:
                    proc.state = "finished"
                    self.finished.append(proc)

                    # logs event of process finishing all bursts
                    self._record(
                        f"{proc.pid} finished all bursts",
                        event_type="finished",
                        proc=proc.pid,
                        device=f"IO{dev.did}",
                    )

        # Dispatch to CPUs
        for cpu in self.cpus:

            # If CPU is free and there's a process in ready queue
            if not cpu.is_busy() and self.ready_queue:

                # Pop process from left of ready queue
                proc = self.ready_queue.popleft()

                # Assign process to CPU
                cpu.assign(proc)

                # Log the dispatch event
                self._record(
                    f"{proc.pid} dispatched to CPU{cpu.cid}",
                    event_type="dispatch_cpu",
                    proc=proc.pid,
                    device=f"CPU{cpu.cid}",
                )
            # If CPU is busy and the process in the ready queue has
            # a shorter remaining CPU time, preempt the running process
            if (cpu.is_busy() and self.ready_queue):
                
                assert cpu.current.current_burst() and "cpu" in cpu.current.current_burst(), \
                f"CPU{cpu.cid} has non_CPU burst: {cpu.current.current_burst()}"
                assert "cpu" in self.ready_queue[0].current_burst(), \
                f"Ready queue head {self.ready_queue[0].pid} is not on a CPU burst"

                cur = cpu.current.current_burst()['cpu']
                rq0_self = self.ready_queue[0]
                rq0 = rq0_self.current_burst()['cpu']
                
                if cur > rq0:
                    to_preempt = cpu.current
                    to_preempt.state = "ready"
                    index = self.get_in_order_index(to_preempt)
                    self.ready_queue.insert(index, to_preempt)

                    self._record(
                        f"{to_preempt.pid} preempted CPU{cpu.cid} → ready queue",
                        event_type = "cpu_to_ready",
                        proc=to_preempt.pid,
                        device=f"CPU{cpu.cid}"
                    )

                    new_proc = self.ready_queue.popleft()
                    cpu.assign(new_proc)

                    self._record(
                        f"{new_proc.pid} preempt ready queue → CPU{cpu.cid}",
                        event_type = "ready_to_cpu",
                        proc=new_proc.pid,
                        device=f"CPU{cpu.cid}"
                    )

        # Dispatch to IO devices
        # Same logic as above but for IO devices and wait queue
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

    def get_in_order_index(self, proc_in):
        '''
        Function that recieves a process
        and goes through the ready queue to return the
        index of where it needs to be added.
        '''
        
        assert proc_in.current_burst() and "cpu" in proc_in.current_burst(), \
            f"Process {proc_in.pid} has invalid burst {proc_in.current_burst()}"
        
        # Variable to store correct index
        index = 0
        # pnemonic for 
        i_burst = proc_in.current_burst()
        assert i_burst and "cpu" in i_burst
        i_key = (i_burst["cpu"], proc_in.arrival_time, proc_in.pid)

        # Loop through ready queue to place process in correct position
        for p in self.ready_queue:            
            p_burst = p.current_burst()
            assert p_burst and "cpu" in p_burst
            p_key = (p_burst["cpu"], p.arrival_time, p.pid)
            if p_key < i_key:
                index += 1
                
        return index