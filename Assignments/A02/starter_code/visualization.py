import pygame
import pandas as pd
import ast
import colorsys
import math

# Window dimensions
WIDTH, HEIGHT = 900, 500


# -----------------------------
# Data loading / parsing
# -----------------------------
def parse_list(val):
    """Convert string representation of list into a real Python list."""
    if isinstance(val, str):
        val = val.strip()
        if val == "" or val == "[]":
            return []
        try:
            return ast.literal_eval(val)
        except Exception:
            return []
    if val is None or (isinstance(val, float) and math.isnan(val)):
        return []
    return val


def load_timeline(timesheet_id):
    """Load timeline CSV into a DataFrame and normalize types."""
    try:
        df = pd.read_csv(f"./timelines/timeline{timesheet_id}.csv")

        # Parse list-like columns
        for col in ["ready_queue", "wait_queue", "cpus", "ios"]:
            df[col] = df[col].apply(parse_list)

        # Normalize the process column to string IDs (or None)
        def normalize_proc(x):
            if x is None or (isinstance(x, float) and math.isnan(x)):
                return None
            s = str(x)
            if s.lower() == "none" or s == "":
                return None
            try:
                return str(int(float(s)))
            except ValueError:
                return s

        df["process"] = df["process"].apply(normalize_proc)

        return df

    except FileNotFoundError:
        print(f"Error: The file 'timeline{timesheet_id}.csv' does not exist in the 'timelines' folder.")
        raise SystemExit(1)


def detect_rr_quantum(df):
    """Check if RR scheduler is used and detect quantum from preempt/dispatch pairs."""
    RR = any("preempt_cpu" in str(x) for x in df["event_type"])
    quantum_value = None

    if RR:
        rr_events = df[df["event_type"] == "preempt_cpu"]
        for _, preempt_row in rr_events.iterrows():
            proc_id = preempt_row["process"]
            preempt_time = preempt_row["time"]

            dispatch_rows = df[
                (df["process"] == proc_id)
                & (df["event_type"] == "dispatch_cpu")
                & (df["time"] < preempt_time)
            ]

            if not dispatch_rows.empty:
                dispatch_time = dispatch_rows["time"].max()
                quantum_value = preempt_time - dispatch_time
                break

    return RR, quantum_value


# -----------------------------
# Pygame setup & layout
# -----------------------------
def init_pygame():
    pygame.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    pygame.display.set_caption("OS Scheduler Visualizer")
    clock = pygame.time.Clock()
    return screen, clock


def build_boxes(df):
    """Build boxes dictionary based on CPUs and IOs in timeline."""
    cpu_count = len(df["cpus"].iloc[0])
    io_count = len(df["ios"].iloc[0])

    boxes = {
        "Ready": (50, 50, 250, 75),
        "Wait": (600, 50, 250, 75),
        "Finished": (50, 410, 800, 75),
    }

    cpu_start_x, cpu_y = 240, 150
    io_start_x, io_y = 240, 300
    box_w, box_h = 100, 100
    gap = 150

    for i in range(cpu_count):
        boxes[f"CPU {i}"] = (cpu_start_x + i * gap, cpu_y, box_w, box_h)

    for i in range(io_count):
        boxes[f"IO {i}"] = (io_start_x + i * gap, io_y, box_w, box_h)

    return boxes, cpu_count, io_count


def get_box_center(boxes, name):
    x, y, w, h = boxes[name]
    return (x + w // 2, y + h // 2)


def get_queue_positions(boxes, name, items):
    """Evenly space items horizontally inside a queue box."""
    x, y, w, h = boxes[name]
    return [(x + 30 + i * 30, y + h // 2) for i, _ in enumerate(items)]


def draw_box(screen, boxes, name):
    BOX_COLOR = (50, 50, 50)
    TEXT_COLOR = (255, 255, 255)

    x, y, w, h = boxes[name]
    pygame.draw.rect(screen, BOX_COLOR, (x, y, w, h))
    font = pygame.font.SysFont(None, 24)
    label = font.render(name, True, TEXT_COLOR)
    screen.blit(label, (x + 5, y + 5))


# -----------------------------
# Colors & process drawing
# -----------------------------
def generate_colors(n):
    colors = []
    for i in range(n):
        hue = i / max(1, n)
        r, g, b = colorsys.hsv_to_rgb(hue, 1, 1)
        colors.append((int(r * 255), int(g * 255), int(b * 255)))
    return colors


def assign_process_colors(df):
    """Assign distinct colors to each process ID (as strings)."""
    procs = set()

    # From the 'process' column
    for p in df["process"]:
        if p is not None and str(p).lower() != "none":
            procs.add(str(p))

    # From queue columns
    for col in ["ready_queue", "wait_queue", "cpus", "ios"]:
        for lst in df[col]:
            for p in lst:
                if p is not None and str(p).lower() != "none":
                    procs.add(str(p))

    procs = sorted(procs, key=lambda x: int(x))  # nicer order

    color_list = generate_colors(len(procs))
    return {pid: pygame.Color(*color_list[i]) for i, pid in enumerate(procs)}


def draw_processes(screen, positions, process_colors):
    TEXT_COLOR = (255, 255, 255)
    font = pygame.font.SysFont(None, 20)

    for proc, (x, y) in positions.items():
        proc_str = str(proc)
        if proc_str not in process_colors:
            continue
        pygame.draw.circle(screen, process_colors[proc_str], (int(x), int(y)), 12)
        label = font.render(proc_str, True, TEXT_COLOR)
        screen.blit(label, (int(x) - 6, int(y) - 6))


# -----------------------------
# Simulation helpers
# -----------------------------
def move_processes(positions, target_positions, speed):
    """Move each process smoothly toward its target position."""
    for proc, (tx, ty) in target_positions.items():
        if proc not in positions:
            positions[proc] = (tx, ty)
            continue

        x, y = positions[proc]
        dx, dy = tx - x, ty - y
        dist = math.hypot(dx, dy)

        if dist == 0 or dist < speed:
            positions[proc] = (tx, ty)
        else:
            positions[proc] = (x + dx / dist * speed, y + dy / dist * speed)


def update_quantum(cpu_quantum, cpu_process, quantum_value, cpu_count):
    """Update RR quantum counters."""
    for i in range(cpu_count):
        cpu_name = f"CPU {i}"
        if cpu_process[cpu_name] is not None:
            cpu_quantum[cpu_name] -= 1
            if cpu_quantum[cpu_name] <= 0:
                cpu_process[cpu_name] = None
                cpu_quantum[cpu_name] = quantum_value


def update_targets(
    row,
    boxes,
    positions,
    target_positions,
    finished_queue,
    RR,
    cpu_process,
    cpu_quantum,
    quantum_value,
    cpu_count,
    io_count,
):
    """Update target positions based on current timeline row."""

    # Ready queue
    ready_pos = get_queue_positions(boxes, "Ready", row["ready_queue"])
    for proc, pos in zip(row["ready_queue"], ready_pos):
        if not proc:
            continue
        proc = str(proc)
        if proc not in positions:
            positions[proc] = pos
        target_positions[proc] = pos

    # Wait queue
    wait_pos = get_queue_positions(boxes, "Wait", row["wait_queue"])
    for proc, pos in zip(row["wait_queue"], wait_pos):
        if not proc:
            continue
        proc = str(proc)
        if proc not in positions:
            positions[proc] = pos
        target_positions[proc] = pos

    # CPUs
    for i in range(cpu_count):
        cpu_name = f"CPU {i}"
        proc = row["cpus"][i] if i < len(row["cpus"]) else None
        if proc:
            proc = str(proc)
            center = get_box_center(boxes, cpu_name)
            if proc not in positions:
                positions[proc] = center
            target_positions[proc] = center

            if RR and cpu_process[cpu_name] != proc:
                cpu_process[cpu_name] = proc
                cpu_quantum[cpu_name] = quantum_value

    # IOs
    for i in range(io_count):
        io_name = f"IO {i}"
        proc = row["ios"][i] if i < len(row["ios"]) else None
        if proc:
            proc = str(proc)
            center = get_box_center(boxes, io_name)
            if proc not in positions:
                positions[proc] = center
            target_positions[proc] = center

    # Finished queue
    if "finished all bursts" in str(row["event"]):
        proc = str(row["process"])
        if proc not in finished_queue:
            finished_queue.append(proc)

    finished_pos = get_queue_positions(boxes, "Finished", finished_queue)
    for proc, pos in zip(finished_queue, finished_pos):
        if proc not in positions:
            positions[proc] = pos
        target_positions[proc] = pos


# -----------------------------
# Main execution
# -----------------------------
def main():
    BG = (30, 30, 30)
    TEXT_COLOR = (255, 255, 255)

    timesheet = input("Enter timesheet ID (ex. 0001): ")

    df = load_timeline(timesheet)
    RR, quantum_value = detect_rr_quantum(df)
    boxes, cpu_count, io_count = build_boxes(df)
    process_colors = assign_process_colors(df)

    positions = {}
    target_positions = {}
    finished_queue = []

    speed = 6            # movement speed of circles
    frames_per_tick = 32 # how many frames per simulated time unit

    cpu_quantum = {}
    cpu_process = {}
    if RR and quantum_value is not None:
        cpu_quantum = {f"CPU {i}": quantum_value for i in range(cpu_count)}
        cpu_process = {f"CPU {i}": None for i in range(cpu_count)}

    screen, clock = init_pygame()

    sim_time = 0
    frame = 0
    tick_counter = 0
    running = True
    paused = False

    while running:
        clock.tick(30)  # FPS

        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False

            if event.type == pygame.KEYDOWN:
                if event.key == pygame.K_q:
                    running = False
                elif event.key == pygame.K_p:
                    paused = not paused
                elif event.key == pygame.K_w:  # increase move speed
                    speed = min(speed + 1, 60)
                elif event.key == pygame.K_e:  # decrease move speed
                    speed = max(speed - 1, 1)
                elif event.key == pygame.K_s:  # faster sim time
                    frames_per_tick = max(1, frames_per_tick - 1)
                elif event.key == pygame.K_d:  # slower sim time
                    frames_per_tick = min(120, frames_per_tick + 1)

        screen.fill(BG)

        if not paused:
            tick_counter += 1
            if tick_counter >= frames_per_tick:
                tick_counter = 0
                sim_time += 1

                if RR and quantum_value is not None:
                    update_quantum(cpu_quantum, cpu_process, quantum_value, cpu_count)

            # apply all events up to current time
            while frame < len(df) and df.iloc[frame]["time"] <= sim_time:
                update_targets(
                    df.iloc[frame],
                    boxes,
                    positions,
                    target_positions,
                    finished_queue,
                    RR,
                    cpu_process,
                    cpu_quantum,
                    quantum_value,
                    cpu_count,
                    io_count,
                )
                frame += 1

            # draw layout
            for name in boxes:
                draw_box(screen, boxes, name)

            # animate movement + draw processes
            move_processes(positions, target_positions, speed)
            draw_processes(screen, positions, process_colors)

            # RR quantum labels
            if RR and quantum_value is not None:
                font = pygame.font.SysFont(None, 20)
                y_offset = 150
                for cpu_name, remaining in cpu_quantum.items():
                    label = font.render(f"{cpu_name} Q: {remaining}", True, TEXT_COLOR)
                    screen.blit(label, (WIDTH - 160, y_offset))
                    y_offset += 20

            # time at top
            font = pygame.font.SysFont(None, 36)
            time_label = font.render(f"Time: {sim_time}", True, TEXT_COLOR)
            screen.blit(time_label, (WIDTH // 2 - 60, 10))

            # left-side controls panel (like your original screenshot)
            font = pygame.font.SysFont(None, 20)
            # movement info
            screen.blit(font.render(f"Movement Speed: {speed}", True, TEXT_COLOR), (70, 200))
            screen.blit(font.render(f"w -Increase", True, TEXT_COLOR), (70, 220))
            screen.blit(font.render(f"e -Decrease", True, TEXT_COLOR), (70, 235))
            # clock info
            screen.blit(font.render(f"Clock Speed: {frames_per_tick}", True, TEXT_COLOR), (70, 265))
            screen.blit(font.render(f"s -Increase", True, TEXT_COLOR), (70, 285))
            screen.blit(font.render(f"d -Decrease", True, TEXT_COLOR), (70, 300))
            # pause/quit
            screen.blit(font.render(f"p -Pause/Unpause", True, TEXT_COLOR), (70, 320))
            screen.blit(font.render(f"q -Quit", True, TEXT_COLOR), (70, 335))

            pygame.display.flip()

    pygame.quit()


if __name__ == "__main__":
    main()

