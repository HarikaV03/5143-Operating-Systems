from .base import Scheduler


class ShortestJobFirst(Scheduler):
    """
    Shortest Job First scheduler that extends base Scheduler.
    Inserts Each process inserted into the ready queue will be
    placed in the correct order. This way the cpu won't have to
    search for the shortest job. It will always be the first one.
    
    To implement this, I overwrote the 'add_process' and 'step'
    member function inherited from base scheduler (FCFS).
    """

    def __init__(self, num_cpus=1, num_ios=1, verbose=True, processes=None):
        super().__init__(num_cpus=num_cpus, num_ios=num_ios, verbose=verbose, processes=processes)
        self.name = "Shortest Job First"
        
    
    def add_process(self, process):
        """
        Add a new process to the ready queue
        ordered by current burst
        Args:
            process: Process instance to add
        Returns: None
        """

        process.state = "ready"  # sets the current process state to ready

        
        # Get current burst of process
        burst = process.current_burst()
        
        # Get index where process needs to be inserted
        index = self.get_in_order_index(burst)
            
        # Inserting process in correct place
        self.ready_queue.insert(index,process)
        

        # Log the event
        self._record(
            f"{process.pid} added to ready queue",
            event_type="enqueue",
            proc=process.pid,
        )
        

    def step(self):
        """
        Advance the scheduler by one time unit
        Returns: None
        """

        for p in self.ready_queue:
            p.wait_time += 1        # Increment wait time for processes in ready queue
        for p in self.wait_queue:
            p.io_time += 1          # Increment I/O time for processes in wait queue

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
                        f"{proc.pid} finished CPU → wait queue",
                        event_type="cpu_to_io",
                        proc=proc.pid,
                        device=f"CPU{cpu.cid}",
                    )

                # If the next burst is CPU, move to ready queue
                elif burst and "cpu" in burst:
                    
                    # Add process to correct location in ready_queue
                    # Get index where process needs to be inserted
                    index = self.get_in_order_index(burst)
            
                    # Inserting process in correct place
                    self.ready_queue.insert(index,proc)

                    # logs event of moving process to ready queue
                    self._record(
                        f"{proc.pid} finished CPU → ready queue",
                        event_type="cpu_to_ready",
                        proc=proc.pid,
                        device=f"CPU{cpu.cid}",
                    )
                # No more bursts, process is finished
                else:
                    proc.state = "finished"
                    proc.finish_time = self.clock.now()
                    proc.turnaround_time = proc.finish_time - proc.arrival_time
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
                if burst:
                    proc.state = "ready"
                    
                    # Get index where process needs to be inserted
                    index = self.get_in_order_index(burst)
            
                    # Inserting process in correct place
                    self.ready_queue.insert(index,proc)

                    # logs event of moving process to ready queue
                    self._record(
                        f"{proc.pid} finished I/O → ready queue",
                        event_type="io_to_ready",
                        proc=proc.pid,
                        device=f"IO{dev.did}",
                    )
                # else process is finished
                else:
                    proc.state = "finished"
                    proc.finish_time = self.clock.now()
                    proc.turnaround_time = proc.finish_time - proc.arrival_time
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
                self.context_switches += 1
                # Record process's first_run if it hasn't already been
                if proc.first_run is None:
                    proc.first_run = self.clock.now()
                    proc.response_time = proc.first_run - proc.arrival_time

                # Log the dispatch event
                self._record(
                    f"{proc.pid} dispatched to CPU{cpu.cid}",
                    event_type="dispatch_cpu",
                    proc=proc.pid,
                    device=f"CPU{cpu.cid}",
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
        
        
    def get_in_order_index(self, burst):
        '''
        Function that recieves a process' current burst
        and goes through the ready queue to return the
        index of where it needs to be added.
        '''
        
        # Variable to store corrent index
        index = 0
        
        # Loop through read queue to place process in correct position
        for proc in self.ready_queue:
            if proc.current_burst()['cpu'] < burst['cpu']:
                index += 1
                
        return index