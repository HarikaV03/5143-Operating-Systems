## Project 2 - CPU I/O Scheduler Simulation
---

### Group Members
- Tim Haxton  
- Cooper Wolf  
- Harika Vemulapalli  

---
## Overview
This project simulates CPU and I/O scheduling to analyze how different scheduling algorithms perform under various workloads. The simulation generates random processes and evaluates them using multiple schedulers such as:

- **FCFS (First-Come, First-Served)**
- **Round Robin (RR)**
- **Priority Scheduling**
- *(and others as implemented)*

After running simulations, the program outputs results to compare metrics like waiting time, turnaround time, and throughput to determine which scheduler performs best under specific conditions.

---

## Purpose
The goal of this project is to model how operating systems manage CPU and I/O scheduling and to visualize how different algorithms handle process queues. The findings can be used to better understand the trade-offs in scheduling strategies.


### Project File Overview

| Files / Folders | Description |
|-----------------|-------------|
| **schedulers/** | Contains all scheduler algorithms and logic. |
| ├── `__init__.py` | Initializes the schedulers package. |
| ├── `base.py` | Implements the base (FCFS) scheduler. |
| └── `rr.py` | Implements the Round Robin scheduler with configurable quantum. |
| **starter_code/** | Contains the main driver and core simulation utilities. |
| ├── `main.py` | Main driver that runs the CPU and I/O scheduling simulation. |
| ├── `process.py` | Defines process attributes such as PID, burst times, and arrival times. |
| ├── `utils/` | Contains helper classes for clock, CPU, I/O devices, and other shared logic. |
| ├── `job_jsons/` | Stores generated process data files (`process_file_XXXX.json`). |
| └── `timelines/` | Contains simulation output files (`.csv` and `.json`). |
| **gen_jobs/** | Scripts for generating random process/job data. |
| ├── `fid` | Stores the next file number ID. |
| ├── `generate_job.py` | Generates random job data files. |
| └── `job_classes.json` | Defines different process classes and workload profiles. |

---
