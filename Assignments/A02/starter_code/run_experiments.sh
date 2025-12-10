#!/bin/bash

FILES=$(seq 1 45)
SCHEDS=("fcfs" "rr" "sjf" "srtf" "priority")
CPUS=("1" "2")
IOS=("1" "2")
QUANTUMS=("2" "5" "10") # only for RR

mkdir -p results

for f in $FILES; do
    for s in "${SCHEDS[@]}"; do
        for c in "${CPUS[@]}"; do
            for i in "${IOS[@]}"; do
                if [[ "$s" == "rr" ]]; then
                    # Round Robin -> run once per quantum
                    for q in "${QUANTUMS[@]}"; do
                        echo "Running file_num=$f sched=$s q=$q cpus=$c ios=$i"
                        python3 main.py \
                            file_num=$f \
                            cpus=$c \
                            ios=$i \
                            sched=$s \
                            quantum=$q \
                            > "results/file${f}_${s}_q${q}_${c}cpu_${i}io.log"
                    done
                else
                    # Other schedulers -> run without quantum
                    echo "Running file_num=$f sched=$s cpus=$c ios=$i"
                    python3 main.py \
                        file_num=$f \
                        cpus=$c \
                        ios=$i \
                        sched=$s \
                        > "results/file${f}_${s}_${c}cpu_${i}io.log"
                fi

            done
        done
    done
done