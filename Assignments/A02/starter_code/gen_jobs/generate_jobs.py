import json
import random
import uuid
from pathlib import Path
import datetime  # Note: time module for timestamps
import sys
import random

pid = 0


# ----------------------------------------------------------
# Generate a time current unix stamp
# ----------------------------------------------------------
def generate_timestamp():
    return int(datetime.datetime.now().timestamp())


# ----------------------------------------------------------
# Generate a short unique ID for output files
# ----------------------------------------------------------
def generate_outfile_id():
    with open("fid", "r") as f:
        fid = int(f.read().strip())
    new_fid = fid + 1
    with open("fid", "w") as f:
        f.write(str(new_fid))
    return str(new_fid).zfill(4)


# ----------------------------------------------------------
# Load user class templates
# ----------------------------------------------------------
def load_user_classes(file_path="job_classes.json"):
    with open(file_path, "r") as f:
        return json.load(f)


# ----------------------------------------------------------
# Burst helpers
# ----------------------------------------------------------
def generate_cpu_burst(user_class):
    return max(
        1,
        int(random.gauss(user_class["cpu_burst_mean"], user_class["cpu_burst_stddev"])),
    )


def generate_io_burst(user_class):
    io_type = random.choice(user_class["io_profile"]["io_types"])
    duration = max(
        1,
        int(
            random.gauss(
                user_class["io_profile"]["io_duration_mean"],
                user_class["io_profile"]["io_duration_stddev"],
            )
        ),
    )
    return {"type": io_type, "duration": duration}


def hybrid_arrivals(n, p_batch=0.4, centers=None, sigma=5, mean_inter=15, std_inter=3):
    """
    Generate hybrid-style process arrival times:
    - Some processes arrive in bursts near defined centers (batch arrivals)
    - Others arrive in a stream spaced by mean_inter ± std_inter
    """
    if centers is None:
        centers = [10, 50, 100]

    # Generate stream-style interarrival times
    inter_arrivals = [max(1, int(round(random.gauss(mean_inter, std_inter)))) for _ in range(n * 2)]

    # Convert interarrivals into cumulative times for realism
    stream_times = []
    current_time = 0
    for inter in inter_arrivals:
        current_time += inter
        stream_times.append(current_time)
    stream = iter(stream_times)

    # Build hybrid list
    times = []
    for _ in range(n):
        if random.random() < p_batch:
            # Batched (clustered) arrival
            c = random.choice(centers)
            times.append(max(0, int(round(random.gauss(c, sigma)))))
        else:
            # Streamed arrival (spaced apart)
            times.append(next(stream))

    return sorted(times)


def flow_arrivals(n, mean_inter=10, std_inter=3):
    """
    Generate arrival times for continuous flow:
    Each process arrives after some interval (mean_inter ± std_inter).
    """
    current_time = 0
    times = []
    for _ in range(n):
        inter = max(1, int(round(random.gauss(mean_inter, std_inter))))
        current_time += inter
        times.append(current_time)
    return sorted(times)


def batch_arrivals(n):
    """
    All processes arrive around a single time cluster.
    (e.g., around time 50 ± 10)
    """
    mu = 50      # mean arrival time
    sigma = 10   # standard deviation
    times = [max(0, int(round(random.gauss(mu, sigma)))) for _ in range(n)]
    return sorted(times)


def generate_arrival_times(mode="hybrid", n=10):
    """
    Wrapper for selecting arrival time generation mode.
    mode: 'hybrid', 'flow', or 'batch'
    """
    if mode == "flow":
        return flow_arrivals(n)
    elif mode == "batch":
        return batch_arrivals(n)
    else:
        return hybrid_arrivals(n)



# ----------------------------------------------------------
# Generate one process until CPU budget is consumed
# ----------------------------------------------------------
def generate_process(user_class, max_bursts=20):
    global pid

    # ppid= str(uuid.uuid4())[:8]
    pid += 1
    ppid = str(pid)

    prio_low, prio_high = user_class["priority_range"]
    priority = random.randint(prio_low, prio_high)

    # NEW: CPU time budget for this process
    budget_mean = user_class.get("cpu_budget_mean", 50)
    budget_std = user_class.get("cpu_budget_stddev", 10)
    cpu_budget = max(5, int(random.gauss(budget_mean, budget_std)))

    bursts = []
    cpu_used = 0
    burst_count = 0

    while cpu_used < cpu_budget and burst_count < max_bursts:
        # CPU burst
        cpu_burst = generate_cpu_burst(user_class)
        if cpu_used + cpu_burst > cpu_budget:
            cpu_burst = cpu_budget - cpu_used  # trim to budget
        bursts.append({"cpu": cpu_burst})
        cpu_used += cpu_burst
        burst_count += 1

        # IO burst (optional)
        if cpu_used < cpu_budget and burst_count < max_bursts:
            if random.random() < user_class["io_profile"]["io_ratio"]:
                bursts.append({"io": generate_io_burst(user_class)})
            burst_count += 1
            
    # Assigning arrival time to each process
    #arrival_time = random.randint(0,75)
    
    return {
        "pid": ppid,
        "class_id": user_class["class_id"],
        #"arrival_time": arrival_time,
        "priority": priority,
        "cpu_budget": cpu_budget,
        "cpu_used": cpu_used,
        "bursts": bursts,
    }


# ----------------------------------------------------------
# Generate N processes across classes
# ----------------------------------------------------------
def generate_processes(user_classes, n=100):
    processes = []

    total_rate = sum(cls["arrival_rate"] for cls in user_classes)
    weights = [cls["arrival_rate"] / total_rate for cls in user_classes]
    
    #arrival_times = hybrid_arrivals(n)
    arrival_times = generate_arrival_times(mode, n)

    for i in range(n):
        user_class = random.choices(user_classes, weights=weights, k=1)[0]
        process = generate_process(user_class)
        
        process["arrival_time"] = arrival_times[i]
        processes.append(process)

    return processes


def parse_value(value):
    """
    Try to convert string to appropriate type since everything read in from command line is a string
    Args:
        value: string value to parse
    Returns:
        value converted to bool, int, float, or original string
    """
    # Try boolean
    if value.lower() in ("true", "false"):
        return value.lower() == "true"
    # Try int
    try:
        return int(value)
    except ValueError:
        pass
    # Try float
    try:
        return float(value)
    except ValueError:
        pass
    # Give up, return string
    return value


def argParse():
    """Parse command line arguments into a dictionary
    Returns:
        dict of argument names to values
    """
    kwargs = {}
    for arg in sys.argv[1:]:
        if "=" in arg:
            key, value = arg.split("=", 1)
            kwargs[key] = parse_value(value)
    return kwargs


# ----------------------------------------------------------
# Example usage
# ----------------------------------------------------------
if __name__ == "__main__":
    
    # Parse command line arguments
    args = argParse()

    # Get parameters if they exist, else use defaults
    # file_num is used to load different process files and save different timeline files
    num_processes = args.get("num_processes", 10)

    # Limit is used to restrict the number of processes loaded
    # Looking for arrival_time = 'hybrid', 'flow', or 'batch'
    mode = args.get("arrival_time", "hybrid")

    user_classes = load_user_classes("job_classes.json")

    # Generate 10 demo processes
    processes = generate_processes(user_classes, n=num_processes)

    # Sorting processes by arrival time
    #processes = sorted(processes, key=lambda x: x["arrival_time"])

    # Pretty print
    for p in processes:
        print(json.dumps(p, indent=2))

    # Save to file
    out_file = Path(f"../job_jsons/process_file_{generate_outfile_id()}.json")
    with open(out_file, "w") as f:
        json.dump(processes, f, indent=2)
    print(f"\n✅ {len(processes)} processes saved to {out_file}")