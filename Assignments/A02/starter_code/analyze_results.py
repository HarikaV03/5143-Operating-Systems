
import pandas as pd
import glob
import re
import seaborn as sns
import matplotlib.pyplot as plt
from math import pi

def load_all_results():
    files = glob.glob("./analysis/Jobs_*_Analysis.csv")
    frames = []

    for path in files:
        # Extract file_num from filename
        m = re.search(r"Jobs_(\d+)_Analysis\.csv", path)
        file_num = int(m.group(1)) if m else None

        # Read the first 4 lines for metadata
        with open(path) as f:
            meta_lines = [next(f).strip() for _ in range(4)]

        # Example lines:
        # "Process File: 1,,,,,,,,"
        # "Processes: 10,,,,,,,,"
        # "Device Load: cpu,,,,,,,,"
        # "Arrival Times: flow,,,,,,,,"

        meta = {}
        for line in meta_lines:
            if ":" in line:
                key, value = line.split(":", 1)
                # take the part before the first comma, strip spaces and trailing dot
                value = value.split(",")[0].strip().rstrip(".")
                meta[key.strip()] = value

        # Read the actual CSV body (skip meta + blank line)
        df = pd.read_csv(path, skiprows=5)

        # Normalize column names: strip spaces and lowercase
        df.columns = [c.strip().lower().replace(" ", "_") for c in df.columns]

        # Add meta columns to every row
        df["file_num"] = file_num
        df["num_processes"] = int(meta.get("Processes", 0))
        df["device_load"] = meta.get("Device Load", "")
        df["arrival_times"] = meta.get("Arrival Times", "")

        frames.append(df)

    df_all = pd.concat(frames, ignore_index=True)
    df_all.to_csv("all_results.csv", index=False)

    return df_all

def plot_performance_by_device_load(df):
    sns.barplot(data=df, x="scheduler", y="average_turnaround_time", hue="device_load")
    plt.title("Scheduler Performance by Device Load")
    plt.savefig("performance_by_device_load.png", dpi=1200, bbox_inches="tight")
    plt.close()

def plot_response_by_arrival_pattern(df):
    sns.barplot(data=df, x="scheduler", y="average_response_time", hue="arrival_times")
    plt.title("Response Time under Different Arrival Patterns")
    plt.savefig("response_by_arrival_pattern.png", dpi=1200, bbox_inches="tight")
    plt.close()

def plot_throughput_vs_process_count(df):
    sns.lineplot(data=df, x="num_processes", y="throughput", hue="scheduler", marker="o")
    plt.title("Throughput Scaling with Process Count")
    plt.savefig("throughput_vs_process_count.png", dpi=1200, bbox_inches="tight")
    plt.close()


def plot_cpu_utilization_by_scheduler_and_device_count(df):
    sns.barplot(data=df, x="scheduler", y="cpu_utilization", hue="cpu's")
    plt.title("CPU Utilization with 1 vs 2 CPUs")
    plt.savefig("cpu_utilization_by_scheduler_and_device_count.png", dpi=1200, bbox_inches="tight")
    plt.close()

# def plot_round_robin_quantum_sensitivity(df):
#     rr = df[df.scheduler == "rr"]

#     sns.lineplot(data=rr, x="quantum", y="average_turnaround_time", hue="device_load", marker="o")
#     plt.title("RR Quantum Effect on Turnaround Time")
#     plt.savefig("round_robin_quantum_sensitivity.png", dpi=600, bbox_inches="tight")
#     plt.close()

def plot_overall_comparison(df):
    sched = "srtf"
    subset = df[df.scheduler == sched].mean()

    categories = ["average_turnaround_time", "average_response_time", "throughput", "cpu_utilization"]
    values = subset[categories].values.tolist()

    # wrap around
    values += values[:1]

    angles = [n / float(len(categories)) * 2 * pi for n in range(len(categories))]
    angles += angles[:1]

    plt.polar(angles, values, marker = "o")
    plt.title(f"Performance Profile for {sched.upper()}")
    plt.savefig("overall_comparison.png", dpi=1200, bbox_inches="tight")
    plt.close()

def best_scheduler_by_scenario_heatmap(df):
    df = df.copy()
    df["scheduler"] = df["scheduler"].astype(str).str.strip()

    #get the best scheduler (lowest avg_turnaround) per (num_processes, device_load)
    best = df.loc[df.groupby(["num_processes", "device_load"])["average_turnaround_time"].idxmin()].copy()

    # Map scheduler names to numeric codes for the heatmap
    sched_map = {
        "First come First Serve": 0,
        "Round Robin": 1,
        "Shortest Job First": 2,
        "Shortest Remaining Time First": 3,
        "Priority Scheduler": 4,
    }

    best["sched_code"] = best["scheduler"].map(sched_map)

    pivot_vals = best.pivot(
        index="num_processes",
        columns="device_load",
        values="sched_code",
    )

    pivot_annot = best.pivot(
        index="num_processes",
        columns="device_load",
        values="scheduler",
    )

    sns.heatmap(pivot_vals, annot=pivot_annot, fmt="", cmap="Set3")
    plt.title("Best Scheduler for Each Scenario")
    plt.tight_layout()
    plt.savefig("best_scheduler_by_scenario.png", dpi=300, bbox_inches="tight")
    plt.close()

if __name__ == "__main__":
    df = load_all_results()
    print(df.columns.tolist())
    plot_performance_by_device_load(df)
    plot_response_by_arrival_pattern(df)
    plot_throughput_vs_process_count(df)
    plot_cpu_utilization_by_scheduler_and_device_count(df)
    # plot_round_robin_quantum_sensitivity(df)
    plot_overall_comparison(df)
    best_scheduler_by_scenario_heatmap(df)