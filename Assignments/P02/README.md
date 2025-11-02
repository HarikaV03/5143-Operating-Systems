## Project 2 - CPU I/O Scheduler Simulation
---

### Group Members
- Tim Haxton  
- Cooper Wolf  
- Harika Vemulapalli  

---
## 📘 Overview
This project simulates CPU and I/O scheduling to analyze how different scheduling algorithms perform under various workloads. The simulation generates random processes and evaluates them using multiple schedulers such as:

- **FCFS (First-Come, First-Served)**
- **Round Robin (RR)**
- **Priority Scheduling**
- *(and others as implemented)*

After running simulations, the program outputs results to compare metrics like waiting time, turnaround time, and throughput to determine which scheduler performs best under specific conditions.

---

## 🧠 Purpose
The goal of this project is to model how operating systems manage CPU and I/O scheduling and to visualize how different algorithms handle process queues. The findings can be used to better understand the trade-offs in scheduling strategies.

### Project File Overview

| Files / Folders | Description |
|-----------------|-------------|
| **cmd_pkg/** | Contains all core simulation logic. |
| ├── `__init__.py` | Initializes the package. |
| ├── `clock.py` | Maintains simulation timing and clock functionality. |
| ├── `cpu.py` | Defines CPU operations and manages process execution. |
| ├── `iodevice.py` | Simulates I/O device requests and completions. |
| ├── `process.py` | Defines process attributes such as PID, burst times, and arrival time. |
| └── `scheduler.py` | Implements FCFS and Round Robin scheduling algorithms. |
| **gen_jobs/** | Scripts for generating random process/job data. |
| ├── `fid` | Stores the next file number ID. |
| ├── `generate_job.py` | Generates random process/job data. |
| └── `job_classes.json` | Defines various process classes and workload types. |
| **job_jsons/** | Stores generated process data in JSON format. |
| **timelines/** | Contains simulation output files (.csv and .json). |
| **config.py** | Global configuration variables such as Round Robin quantum and timing values. |
| **scheduler.py** | The main driver file that runs the entire simulation. |
| **README.md** | Project documentation and setup guide. |

---







### 🧩 Project Structure

CPU-IO-Scheduler/
├── cmd_pkg/
│ ├── init.py
│ ├── clock.py
│ ├── cpu.py
│ ├── iodevice.py
│ ├── process.py
│ └── scheduler.py
│
├── job_generator/
├── job_jsons/
├── timelines/
│
├── config.py
├── scheduler.py
└── README.md

### Simulation Output
The simulation collects and reports performance metrics for each scheduling algorithm, including:
- Average Waiting Time  
- Average Turnaround Time  
- CPU Utilization  
- Throughput  
- Response Time 


