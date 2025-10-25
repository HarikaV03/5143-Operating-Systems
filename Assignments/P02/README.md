## Project 2 - CPU I/O Scheduler Simulation

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

---

## 👩‍💻 Team Members
- **Cooper Wolf**
- **Tim Haxton**
- **Harika**

---

## 📂 Project File Overview

| Files / Folders        | Description                                                      |
|------------------------|------------------------------------------------------------------|
| **cmd_pkg/**           | Contains all core classes used for simulation logic.             |
| ├── __init__.py        | Initializes the `cmd_pkg` package.                               |
| ├── clock.py           | Manages the simulation clock and timing operations.              |
| ├── cpu.py             | Handles CPU scheduling behavior and process execution.           |
| ├── iodevice.py        | Simulates I/O device operations and interactions.                |
| ├── process.py         | Defines the `Process` class and attributes for generated jobs.   |
| └── scheduler.py       | Contains scheduling algorithm logic (RR, FCFS, Priority, etc.).  |
| **gen_jobs/**          | Script(s) for generating random job data.                        |
| └── fid                | Stores the fid of the next file number.                          |
| └── generate_job.py    | Python script that generates random processes.                   |
| └── job_classes.json   | File of differnt process classifications.                        |
| **job_jsons/**         | Stores the generated job data in JSON format.                    |
| **timelines/**         | Stores simulation results as `.csv` and `.json` files.           |
| **config.py**          | Contains global configuration variables.                         |
| **scheduler.py**       | The main driver script that runs the entire simulation.          |
| **README.md**          | Project documentation and instructions.                          |


## 🧩 Project Structure

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


