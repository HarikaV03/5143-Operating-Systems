import collections
import csv
import json
from starter_code.utils import Clock, CPU, IODevice
# import utils

class Scheduler:
    """
    A simple CPU and I/O scheduler

    Attributes:
        clock: shared Clock instance
        ready_queue: deque of processes ready for CPU
        wait_queue: deque of processes waiting for I/O
        cpus: list of CPU instances
        io_devices: list of IODevice instances
        finished: list of completed processes
        log: human-readable log of events
        events: structured log of events for export
        verbose: if True, print log entries to console
    Methods:
        add_process(process): add a new process to the ready queue
        step(): advance the scheduler by one time unit
        run(): run the scheduler until all processes are finished
        timeline(): return the human-readable log as a string
        export_json(filename): export the structured log to a JSON file
        export_csv(filename): export the structured log to a CSV file"""

    def __init__(self, num_cpus=1, num_ios=1, verbose=True, processes=None):
        self.clock = Clock()  # shared clock instance for all components Borg pattern

        # deque (double ended queue) for efficient pops from left
        self.ready_queue = collections.deque()

        # deque (double ended queue) for efficient pops from left
        self.wait_queue = collections.deque()

        # uses a list comprehension to create a list of CPU objects
        self.cpus = [CPU(cid=i, clock=self.clock) for i in range(num_cpus)]

        # uses a list comprehension to create a list of IODevice objects
        self.io_devices = [IODevice(did=i, clock=self.clock) for i in range(num_ios)]
        
        self.name = "First Come First Serve"

        self.finished = []          # list of finished processes
        self.log = []               # human-readable + snapshots
        self.events = []            # structured log for export
        self.verbose = verbose      # if True, print log entries to console
        self.processes = processes
        
        self.throughput = 0         # throughput time
        self.total_time_run = 0     # total scheduler simulation time
        self.context_switches = 0   # number of context switches
        self.cpu_utilization = 0    # ratio of CPU time used to CPU time available
        self.cpu_used = 0           # integer value of CPU time used
        self.cpu_available = 0      # integer value of CPU time available
        self.avg_waiting_time = 0   # ratio of all process waiting times to the total number of processes
        self.avg_turnaround_time = 0    # ratio of all process turnaround times to the total number of processes
        self.avg_response_time = 0  # ratio of all process response times to the total number of processes

    def add_process(self, process):
        """
        Add a new process to the ready queue
        Args:
            process: Process instance to add
        Returns: None
        """

        process.state = "ready"  # sets the current process state to ready

        # Add process to ready queue
        self.ready_queue.append(process)

        # Log the event
        self._record(
            f"{process.pid} added to ready queue",
            event_type="enqueue",
            proc=process.pid,
        )

    def _record(self, event, event_type="info", proc=None, device=None):
        """
        Record an event in the log and structured events list
        Args:
            event: description of the event
            event_type: type/category of the event (e.g., "dispatch", "enqueue", etc.)
            proc: process ID involved in the event (if any)
            device: device ID involved in the event (if any)
        Returns: None
        """
        entry = f"time={self.clock.now():<3} | {event}"
        self.log.append(entry)

        # Print to console if verbose
        if self.verbose:
            print(entry)

        # structured record for export as JSON/CSV
        self.events.append(
            {
                "time": self.clock.now(),
                "event": event,
                "event_type": event_type,
                "process": proc,
                "device": device,
                "ready_queue": [p.pid for p in self.ready_queue],
                "wait_queue": [p.pid for p in self.wait_queue],
                "cpus": [cpu.current.pid if cpu.current else None for cpu in self.cpus],
                "ios": [
                    dev.current.pid if dev.current else None for dev in self.io_devices
                ],
            }
        )

    def _snapshot(self):
        """Take a snapshot of the current state for logging"""

        # The join method is used to concatenate the process IDs in
        # the ready queue into a single string, separated by commas.
        # If the ready queue is empty, it defaults to the string "empty".
        rq = ", ".join([p.pid for p in self.ready_queue]) or "empty"

        # Same as above but for the wait queue
        wq = ", ".join([p.pid for p in self.wait_queue]) or "empty"

        # Join the status of each CPU and IO device into strings separated by " | "
        cpus = " | ".join([str(cpu) for cpu in self.cpus])

        # Same as above but for IO devices
        ios = " | ".join([str(dev) for dev in self.io_devices])

        # Creates a string snapshot of the current state of
        # the scheduler including ready queue, wait queue, CPUs, and IO devices
        snap = f"  [Ready: {rq}]  [Wait: {wq}]  Cpus:[{cpus}]  Ios:[{ios}]"

        # Append the snapshot to the log
        self.log.append(snap)
        if self.verbose:
            print(snap)

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
                    self.ready_queue.append(proc)

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
                    self.ready_queue.append(proc)

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

    def run(self):
        """
        Run the scheduler until all processes are finished
        Returns: None
        """
        
        # Storing total number of processes
        process_counter = len(self.processes)
        print(f"Total number of processes to schedule: {process_counter}")
        
        # Looping while there are sitll processes to be added
        while self.processes:
            
            # Getting processes that arrive at the current time
            arriving_processes = [p for p in self.processes if p.arrival_time == self.clock.now()]
            
            # Looping through arriving processes to add them to ready queue
            for process in arriving_processes:
                self.add_process(process)
                self.processes.remove(process)
                
            # If there are processes to run or IO or any CPU/IO is busy, step    
            if (
                self.ready_queue
                or self.wait_queue
                or any(cpu.is_busy() for cpu in self.cpus)
                or any(dev.is_busy() for dev in self.io_devices)
                ):

                self.step()
                
            # If no processes are ready or waiting and all CPUs/IOs are idle, just tick the clock
            else:
                self.clock.tick()

        # Continue stepping while there are processes in ready/wait queues
        # or any CPU/IO device is busy
        while (
            self.ready_queue
            or self.wait_queue
            or any(cpu.is_busy() for cpu in self.cpus)
            or any(dev.is_busy() for dev in self.io_devices)
            and len(self.finished) != process_counter
        ):
            self.step()
        # Otherwise compile stats for analysis
        else:
            for cpu in self.cpus:
                self.cpu_used = cpu.busy
                self.cpu_available = cpu.available
            self.cpu_utilization = self.cpu_used / self.cpu_available
            temp_wt = 0
            temp_tt = 0
            temp_rt = 0
            for proc in self.finished:
                temp_wt += proc.wait_time
                temp_tt += proc.turnaround_time
                temp_rt += proc.response_time
            self.avg_waiting_time = temp_wt / len(self.finished)
            self.avg_turnaround_time = temp_tt / len(self.finished)
            self.avg_response_time = temp_rt / len(self.finished)
            self.throughput=len(self.finished) / self.clock.now()

    def timeline(self):
        """Return the human-readable log as a single string"""
        return "\n".join(self.log)

    # ---- Exporters ----
    def export_json(self, filename="timeline.json"):
        """Export the timeline to a JSON file"""
        with open(filename, "w") as f:
            json.dump(self.events, f, indent=2)
        if self.verbose:
            print(f"✅ Timeline exported to {filename}")

    def export_csv(self, filename="timeline.csv"):
        """Export the timeline to a CSV file"""

        # If there are no events, do nothing
        if not self.events:
            return

        # Write CSV using DictWriter for structured data
        # .keys() returns a list of all the keys in a dictionary.
        keys = self.events[0].keys()

        # Open the file in write mode with newline='' to prevent extra blank lines on Windows
        with open(filename, "w", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=keys)
            writer.writeheader()
            writer.writerows(self.events)
        if self.verbose:
            print(f"✅ Timeline exported to {filename}")

    def snapshot(self):
        return {
            "clock": self.clock.now(),
            "ready": [proc.pid for proc in self.ready_queue],
            "wait": [proc.pid for proc in self.wait_queue],
            "cpu": [cpu.current.pid if cpu.current else None for cpu in self.cpus],
            "io": [dev.current.pid if dev.current else None for dev in self.io_devices]
        }
    
    def print_stats(self):
        '''Print statistics for all finished processes'''
        print("\n--- Process Statistics ---")
        raw_data = []
        for p in self.finished:
            p.turnaround_time = p.end_time - p.start_time
            raw_data.append(
                f"[{p.pid}: Start={p.start_time}, Wait={p.wait_time}, Turnaround={p.turnaround_time} Run={p.runtime}, I/O={p.io_time}, InitCpuBurst={p.init_cpu_bursts}, InitIoBurst={p.init_io_bursts}, TotalBursts={p.TotalBursts}]"
            )

    def print_scheduler_stats(self):
        """Return and print scheduler statistics.
        Process File: #\n
        Device Configuration (ie. CPU Heavy)\n
        Processes: #\n
        Arrival Times: Policy\n\n"""
        
        stats = (
            f"\n--- {self.name} Scheduler Statistics ---\n"
            f"Throughput: {self.throughput:.5f}\n"
            f"Average Response Time: {self.avg_response_time:.2f}\n"
            f"Context Switches: {self.context_switches}\n"
            f"CPU Utilization: {self.cpu_utilization:.2f}\n"
            f"Average Waiting Time: {self.avg_waiting_time:.2f}\n"
            f"Average Turnaround Time: {self.avg_turnaround_time:.2f}\n"
        )
        
        return stats    # allows you to write it to file
    
    def print_scheduler_stats_csv(self):
        """Return scheduler statistics as a dictionary for CSV purposes.
        Process File: #\n
        Device Configuration (ie. CPU Heavy)\n
        Processes: #\n
        Arrival Times: Policy\n\n"""
        
        stats ={
            "IO's": len(self.io_devices),
            "CPU's": len(self.cpus),
            "Scheduler": self.name,
            "Throughput": f"{self.throughput:.5f}",
            "Average Response Time": f"{self.avg_response_time:.2f}",
            "Context Switches": self.context_switches,
            "CPU Utilization": f"{self.cpu_utilization:.2f}",
            "Average Waiting Time": f"{self.avg_waiting_time:.2f}",
            "Average Turnaround Time": f"{self.avg_turnaround_time:.2f}"
        }
        return stats