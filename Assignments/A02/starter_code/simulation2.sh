#!/bin/bash

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=1 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=2 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=1 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=2 processes=10 arrival_time=flow


python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=1 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=2 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=1 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=2 processes=10 arrival_time=batch


python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=1 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=2 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=1 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=2 processes=10 arrival_time=hybrid



python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=1 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=2 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=1 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=2 processes=10 arrival_time=flow


python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=1 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=2 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=1 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=2 processes=10 arrival_time=batch


python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=1 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=2 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=1 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=2 processes=10 arrival_time=hybrid



python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=1 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=2 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=1 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=2 processes=10 arrival_time=flow


python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=1 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=2 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=1 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=2 processes=10 arrival_time=batch


python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=1 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=2 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=1 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=2 processes=10 arrival_time=hybrid



python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=1 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=2 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=1 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=2 processes=10 arrival_time=flow


python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=1 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=2 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=1 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=2 processes=10 arrival_time=batch


python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=1 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=2 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=1 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=2 processes=10 arrival_time=hybrid



python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=1 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=2 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=1 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=1 processes=10 arrival_time=flow

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=2 processes=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=2 processes=10 arrival_time=flow


python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=1 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=2 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=1 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=1 processes=10 arrival_time=batch

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=2 processes=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=2 processes=10 arrival_time=batch


python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=1 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=2 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=1 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=1 processes=10 arrival_time=hybrid

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=10 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=2 processes=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=2 processes=10 arrival_time=hybrid




python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=1 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=2 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=1 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=2 processes=20 arrival_time=flow


python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=1 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=2 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=1 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=2 processes=20 arrival_time=batch


python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=1 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=2 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=1 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=2 processes=20 arrival_time=hybrid



python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=1 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=2 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=1 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=2 processes=20 arrival_time=flow


python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=1 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=2 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=1 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=2 processes=20 arrival_time=batch


python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=1 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=2 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=1 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=2 processes=20 arrival_time=hybrid



python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=1 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=2 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=1 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=2 processes=20 arrival_time=flow


python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=1 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=2 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=1 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=2 processes=20 arrival_time=batch


python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=1 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=2 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=1 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=2 processes=20 arrival_time=hybrid



python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=1 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=2 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=1 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=2 processes=20 arrival_time=flow


python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=1 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=2 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=1 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=2 processes=20 arrival_time=batch


python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=1 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=2 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=1 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=2 processes=20 arrival_time=hybrid



python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=1 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=2 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=1 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=1 processes=20 arrival_time=flow

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=2 processes=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=2 processes=20 arrival_time=flow


python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=1 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=2 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=1 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=1 processes=20 arrival_time=batch

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=2 processes=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=2 processes=20 arrival_time=batch


python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=1 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=2 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=1 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=1 processes=20 arrival_time=hybrid

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=20 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=2 processes=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=2 processes=20 arrival_time=hybrid




python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=1 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=2 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=1 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=2 processes=30 arrival_time=flow


python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=1 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=2 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=1 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=2 processes=30 arrival_time=batch


python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=1 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=2 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=1 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=2 processes=30 arrival_time=hybrid



python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=1 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=2 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=1 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=2 processes=30 arrival_time=flow


python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=1 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=2 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=1 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=2 processes=30 arrival_time=batch


python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=1 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=2 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=1 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=2 processes=30 arrival_time=hybrid



python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=1 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=2 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=1 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=2 processes=30 arrival_time=flow


python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=1 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=2 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=1 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=2 processes=30 arrival_time=batch


python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=1 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=2 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=1 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=2 processes=30 arrival_time=hybrid



python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=1 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=2 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=1 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=2 processes=30 arrival_time=flow


python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=1 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=2 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=1 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=2 processes=30 arrival_time=batch


python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=1 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=2 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=1 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=2 processes=30 arrival_time=hybrid



python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=1 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=2 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=1 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=1 processes=30 arrival_time=flow

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=2 processes=30 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=2 processes=30 arrival_time=flow


python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=1 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=2 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=1 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=1 processes=30 arrival_time=batch

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=2 processes=30 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=2 processes=30 arrival_time=batch


python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=1 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=2 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=1 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=1 processes=30 arrival_time=hybrid

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=30 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=2 processes=30 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=2 processes=30 arrival_time=hybrid



python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=1 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=2 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=1 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=2 processes=40 arrival_time=flow


python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=1 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=2 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=1 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=2 processes=40 arrival_time=batch


python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=1 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=1 ios=2 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=1 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=cpu sched=fcfs cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=sjf cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=srtf cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=priority cpus=2 ios=2 processes=40 arrival_time=hybrid



python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=1 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=2 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=1 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=2 processes=40 arrival_time=flow


python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=1 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=2 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=1 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=2 processes=40 arrival_time=batch


python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=1 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=io sched=fcfs cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=1 ios=2 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=1 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=io sched=fcfs cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=sjf cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=srtf cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=priority cpus=2 ios=2 processes=40 arrival_time=hybrid



python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=1 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=2 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=1 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=2 processes=40 arrival_time=flow


python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=1 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=2 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=1 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=2 processes=40 arrival_time=batch


python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=1 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=net sched=fcfs cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=1 ios=2 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=1 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=net sched=fcfs cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=sjf cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=srtf cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=priority cpus=2 ios=2 processes=40 arrival_time=hybrid



python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=1 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=2 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=1 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=2 processes=40 arrival_time=flow


python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=1 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=2 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=1 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=2 processes=40 arrival_time=batch


python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=1 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=1 ios=2 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=1 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=dl sched=fcfs cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=sjf cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=srtf cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=priority cpus=2 ios=2 processes=40 arrival_time=hybrid



python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=1 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=2 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=1 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=1 processes=40 arrival_time=flow

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=2 processes=40 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=2 processes=40 arrival_time=flow


python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=1 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=2 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=1 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=1 processes=40 arrival_time=batch

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=2 processes=40 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=2 processes=40 arrival_time=batch


python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=1 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=1 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=1 ios=2 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=1 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=1 processes=40 arrival_time=hybrid

python3 main.py file_num=01 device_load=balanced sched=fcfs cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=40 quantum=2 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=sjf cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=srtf cpus=2 ios=2 processes=40 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=priority cpus=2 ios=2 processes=40 arrival_time=hybrid




python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=10 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=20 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=30 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=40 quantum=5 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=40 quantum=5 arrival_time=hybrid




python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=10 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=20 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=30 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=40 quantum=10 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=40 quantum=10 arrival_time=hybrid




python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=10 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=20 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=30 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=cpu sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=io sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=net sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=dl sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=flow
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=batch
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=1 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=1 ios=2 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=1 processes=40 quantum=20 arrival_time=hybrid
python3 main.py file_num=01 device_load=balanced sched=rr cpus=2 ios=2 processes=40 quantum=20 arrival_time=hybrid