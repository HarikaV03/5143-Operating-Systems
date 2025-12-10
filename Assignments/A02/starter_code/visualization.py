import pygame
import pandas as pd
import ast
import colorsys

# Window dimensions
WIDTH, HEIGHT = 900, 500


def load_timeline(timesheet_id):
    """Load timeline CSV into DataFrame."""
    
    # Read CSV file
    try:
        df = pd.read_csv(f"./timelines/timeline{timesheet_id}.csv")
        
        # Parse list columns
        for col in ["ready_queue", "wait_queue", "cpus", "ios"]:
            df[col] = df[col].apply(parse_list)
            
        # Ensure process column is string
        df["process"] = df["process"].astype(str)
        return df
    
    # Error reading CSV file
    except FileNotFoundError:
        print(f"Error: The file 'timeline{timesheet_id}.csv' does not exist in the 'timelines' folder.")
        exit(1)


def parse_list(l):
    '''Convert string representation of list into Python list.'''
    try:
        
        # Checking if l is a string.
        # If it is, convert to list using ast.literal_eval
        # If not, return as is
        return ast.literal_eval(l) if isinstance(l, str) else l
    except:
        return []
    
    
def detect_rr_quantum(df):
    '''Check if RR scheduler is used and detect quantum values'''
    
    # Determining if RR scheduler was ran
    RR = any("preempt_cpu" in str(x) for x in df["event_type"])
    
    # Set default quantum to None
    quantum_value = None
    
    # If using RR, determine quantum value
    if RR:
        
        # Filter info from timesheet to retrieve quantum
        rr_events = df[df["event_type"] == "preempt_cpu"]

        # Iterate through preemptions to find quantum
        for _, preempt_row in rr_events.iterrows():
            
            # Separate info
            proc_id = preempt_row["process"]
            preempt_time = preempt_row["time"]
        
            # Find the last dispatch for this process before this preemption
            dispatch_rows = df[(df["process"] == proc_id) & 
                             (df["event_type"] == "dispatch_cpu") & 
                             (df["time"] < preempt_time)]
        
            # If found, calculate quantum and break
            if not dispatch_rows.empty:
                dispatch_time = dispatch_rows["time"].max()
                quantum_value = preempt_time - dispatch_time
                break
            
    # Return RR status and quantum value
    return RR, quantum_value
        

def init_pygame():
    '''Initialize Pygame.'''
    pygame.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    pygame.display.set_caption("OS Scheduling Simulation")
    clock = pygame.time.Clock()
    return screen, clock


def build_boxes(df):
    '''Build boxes dictionary based on CPUs and IOs in timeline.'''
    
    # Determining number of CPUs and IOs
    # Finding the length of the first row's cpus and ios lists
    cpu_count = len(df["cpus"].iloc[0])
    io_count = len(df["ios"].iloc[0])
    
    # Building boxes dict
    boxes = {
        "Ready": (50, 50, 250, 75),
        "Wait": (600, 50, 250, 75),
        "Finished": (50, 410, 800, 75),
    }

    # Base positions
    cpu_start_x, cpu_y = 200, 150
    io_start_x, io_y = 200, 300
    box_w, box_h = 100, 100
    gap = 150

    # Add CPU boxes
    for i in range(cpu_count):
        boxes[f"CPU {i}"] = (cpu_start_x + i * gap, cpu_y, box_w, box_h)

    # Add IO boxes
    for i in range(io_count):
        boxes[f"IO {i}"] = (io_start_x + i * gap, io_y, box_w, box_h)
        
    # Return the boxes and counts of CPUs and IOs
    return boxes, cpu_count, io_count


def generate_colors(n):
    '''Generate n distinct colors.'''
    
    # Using HSV to generate distinct colors
    # H: hue, S: saturation, V: value (brightness)
    # H measured in degrees (0-360), S and V in percentage (0-1) 
    colors = []
    
    # Generate colors for each process
    for i in range(n):
        hue = i / n
        r, g, b = colorsys.hsv_to_rgb(hue, 1, 1)
        colors.append((int(r*255), int(g*255), int(b*255)))
    return colors


def assign_process_colors(df):
    '''Assign distinct colors to each process.'''
    
    # Get each process ID
    all_procs = sorted(set(df["process"].dropna()))
    
    # Generate colors for each process
    color_list = generate_colors(len(all_procs))
    
    # Map process IDs to colors
    return {p: pygame.Color(*color_list[i]) for i, p in enumerate(all_procs)}


def get_queue_positions(boxes, name, items):
    '''Get the coordiantes of the processes in a queue (box).'''
    
    # Get box dimensions
    x, y, w, h = boxes[name]
    
    # Return (x,y) coordinates for each process current in the given queue (box)
    return [(x + 30 + i*30, y + h//2) for i, proc in enumerate(items)]


def get_box_center(boxes, name):
    '''Get center position of a box.'''
    
    x, y, w, h = boxes[name]
    return (x + w//2, y + h//2)


def draw_box(screen, boxes, name):
    '''Draw a box on the screen.'''
    
    #BG = (30, 30, 30)
    
    # Get box color and text color
    BOX_COLOR = (50, 50, 50)
    TEXT_COLOR = (255, 255, 255)
    
    # Get dimentions of box
    x, y, w, h = boxes[name]
    
    # Draw the box on the screen
    pygame.draw.rect(screen, BOX_COLOR, (x, y, w, h))
    font = pygame.font.SysFont(None, 24)
    label = font.render(name, True, TEXT_COLOR)
    screen.blit(label, (x + 5, y + 5))


def move_processes(positions, target_positions, speed):
    '''Move process to different queues.'''
    
    # loop through the target positions and move each process towards its target
    for proc, (tx, ty) in target_positions.items():
        
        # Get current position
        x, y = positions[proc]
        
        # Calculate distance to target
        dx, dy = tx - x, ty - y
        dist = (dx**2 + dy**2)**0.5
        
        # If close enough to target, set it to target position
        if dist < speed or dist == 0:
            positions[proc] = (tx, ty)
            
        # Else move process towards target one step at a time
        else:
            positions[proc] = (x + dx/dist*speed, y + dy/dist*speed)


def draw_processes(screen, positions, process_colors):
    '''Create the images for the processes'''
    
    # Set text color and font for each process's ID number
    TEXT_COLOR = (255, 255, 255)
    font = pygame.font.SysFont(None, 20)
    
    # For each process, get their position and draw them.
    for proc, (x, y) in positions.items():
        
        # Drawing the process on the screen
        pygame.draw.circle(screen, process_colors[proc], (int(x), int(y)), 12)
        label = font.render(str(proc), True, TEXT_COLOR)
        screen.blit(label, (int(x)-6, int(y)-6))


def update_quantum(cpu_quantum, cpu_process, quantum_value, cpu_count):
    '''Update the quantum counter for each cpu'''
    
    # Loop through the CPU's
    for i in range(cpu_count):
        
        # Getting the CPU ID
        cpu_name = f"CPU {i}"
        
        # If CPU is busy decrement the quantum
        if cpu_process[cpu_name] is not None:
            cpu_quantum[cpu_name] -= 1
            
            # If quantum reaches 0, clear the cpu of its process, and reset the quantum
            if cpu_quantum[cpu_name] <= 0:
                cpu_process[cpu_name] = None
                cpu_quantum[cpu_name] = quantum_value


def update_targets(row, boxes, positions, target_positions, finished_queue, RR, cpu_process, cpu_quantum, quantum_value, cpu_count, io_count):
    '''Update each queue and get target positions of each process for next draw'''
    
    # Ready Queue
    # For each process in the ready queue, get its target position
    # zip() is used to pair each process with its corresponding position
    # ex. [("1", (50, 50)), ("2", (80, 50)), ...]
    for proc, pos in zip(row["ready_queue"], get_queue_positions(boxes, "Ready", row["ready_queue"])):
        if proc:
            # If process is new, initialize its position
            if proc not in positions:
                
                # Initialize position for new process
                positions[proc] = pos
                
            # Update target position so process can move to correct queue
            target_positions[proc] = pos

    # Wait Queue
    for proc, pos in zip(row["wait_queue"], get_queue_positions(boxes, "Wait", row["wait_queue"])):
        if proc:
            
            # If process is new, initialize its position
            if proc not in positions:
                
                # Initialize position for new process
                positions[proc] = pos
                
            # Update target position so process can move to correct queue
            target_positions[proc] = pos

    # CPUs
    for i, proc in enumerate(row["cpus"]):
        # If there's a process, calculate where it needs to be.
        # If the process doesn't already have a position, initialize at the center
        # Update the target position to the center to it doesn't move
        # If we're using RR and the CPU just got a new process, assign it and reset quantum
        
        # Get CPU name
        cpu_name = f"CPU {i}"
        
        # If there is a process in the CPU
        if proc:
            
            # Calculate the center of the CPU box
            center = get_box_center(boxes, cpu_name)
            
            # If process is new, initialize its position
            if proc not in positions:
                positions[proc] = center
                
            # Set target position for the process to the center of the CPU
            target_positions[proc] = center
            
            # If using Round Robin and the proc isn't currently assigned to the CPU
            if RR and cpu_process[cpu_name] != proc:
                
                # Set the process to the CPU and reset the quantum
                cpu_process[cpu_name] = proc
                cpu_quantum[cpu_name] = quantum_value

    # IOs
    for i, proc in enumerate(row["ios"]):
        
        # Get ID of io
        io_name = f"IO {i}"
        
        # If there is a process on the current IO
        if proc:
            
            # Calculate the center of the IO box
            center = get_box_center(boxes, io_name)
            
            # if process is new, initialize its postition to center
            if proc not in positions:
                positions[proc] = center
                
            # Set target position for process to center of IO
            target_positions[proc] = center

    # Finished queue
    # If a process has finished, add it to the finished_queue
    if "finished all bursts" in str(row["event"]):
        proc = str(int(float(row["process"])))
        if proc not in finished_queue:
            finished_queue.append(proc)
            
    # Looping through the processes in the finished queue and their positions
    for proc, pos in zip(finished_queue, get_queue_positions(boxes, "Finished", finished_queue)):
        
        # If process is new, initialize its position to finished queue
        if proc not in positions:
            positions[proc] = pos
            
        # Set the target position to the finished queue
        target_positions[proc] = pos


# -----------------------------
# Main execution
# -----------------------------
def main():
    BG = (30, 30, 30)
    TEXT_COLOR = (255, 255, 255)
    
    # Getting timesheet ID from user
    timesheet = input("Enter timesheet ID (ex. 0001): ")
    
    # Load that timeline into DataFrame
    df = load_timeline(timesheet)
    
    # Determine if RR scheduler and what quantum is
    RR, quantum_value = detect_rr_quantum(df)
    
    # Create boxes based on CPUs and IOs
    boxes, cpu_count, io_count = build_boxes(df)
    
    # Assign colors to processes
    process_colors = assign_process_colors(df)

    positions = {}          # Current positions of processes
    target_positions = {}   # Target positions of processes
    speed = 30              # Movement speed of processes
    finished_queue = []     # List of finished processes

    cpu_quantum = {}        # Remaining quantum per CPU
    cpu_process = {}        # Current process on each CPU
    
    # Initialize CPU quantum and process tracking if RR
    if RR:
        cpu_quantum = {f"CPU {i}": quantum_value for i in range(cpu_count)}
        cpu_process = {f"CPU {i}": None for i in range(cpu_count)}

    screen, clock = init_pygame()

    sim_time = 1            # Start at time 1 to match timeline
    frame = 0               # DataFrame row index
    frames_per_tick = 20    # Adjust for speed of simulation
    tick_counter = 0        # Counts frames for timing
    running = True
    paused = False
    
    # Button setup
    inc_speed_btn = pygame.Rect(50, 212, 10, 10)
    dec_speed_btn = pygame.Rect(60, 212, 10, 10)
    inc_clock_btn = pygame.Rect(50, 250, 10, 10)
    dec_clock_btn = pygame.Rect(60, 250, 10, 10)


    # Simulation Loop
    while running:
        clock.tick(30)  # FPS
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False
                
            if event.type == pygame.KEYDOWN:
                # Timer speed controls
                if event.key == pygame.K_w:
                    # Increase timer speed
                    speed = min(speed + 1, 150)
                elif event.key == pygame.K_e:
                    # Decrease timer speed
                    speed = max(speed - 1, 1)
                    
                # Clock speed controls
                elif event.key == pygame.K_s:
                    # Increase timer speed
                    frames_per_tick -= 1
                elif event.key == pygame.K_d:
                    # Decrease timer speed
                    frames_per_tick += 1
                    
                # Stop Simulation
                elif event.key == pygame.K_q:
                    running = False
                  
                # Pause simulation
                elif event.key == pygame.K_p:
                    paused = not paused
                

        # Clear screen
        screen.fill(BG)
        
        # Only update simulation if not paused
        if not paused:

            # Update simulation time
            tick_counter += 1
            if tick_counter >= frames_per_tick:
                sim_time += 1
                tick_counter = 0
                
                # Update CPU quantums if RR
                if RR:
                    update_quantum(cpu_quantum, cpu_process, quantum_value, cpu_count)

            # Update target positions for all rows whose time == sim_time
            while frame < len(df) and df.iloc[frame]["time"] <= sim_time:
                update_targets(df.iloc[frame], boxes, positions, target_positions, finished_queue, 
                             RR, cpu_process, cpu_quantum, quantum_value, cpu_count, io_count)
                frame += 1

            # Draw boxes
            for name in boxes: 
                draw_box(screen, boxes, name)

            # Move and draw processes
            move_processes(positions, target_positions, speed)
            draw_processes(screen, positions, process_colors)
            
            # Draw CPU quantum labels
            if RR:
                font = pygame.font.SysFont(None, 20)
                y_offset = 150
                for cpu_name, remaining in cpu_quantum.items():
                    label = font.render(f"{cpu_name} Quantum: {remaining}", True, TEXT_COLOR)
                    screen.blit(label, (WIDTH - 200, y_offset))
                    y_offset += 25

            # Draw current time
            font = pygame.font.SysFont(None, 36)
            time_label = font.render(f"Time: {sim_time}", True, TEXT_COLOR)
            screen.blit(time_label, (WIDTH//2 - 50, 10))
            
            # Draw Movement/Clock speed
            font = pygame.font.SysFont(None, 20)
            speed_label = font.render(f"Movement Speed: {speed}", True, TEXT_COLOR)
            #screen.blit(speed_label, (WIDTH//2 - 50, 40))
            screen.blit(speed_label, (35, 200))
            
            # Dashes for speeds
            font = pygame.font.SysFont(None, 20)
            speed_dash = font.render(f"---------------------------------", True, TEXT_COLOR)
            screen.blit(speed_dash, (35, 210))
            
            font = pygame.font.SysFont(None, 20)
            clock_dash = font.render(f"--------------------------", True, TEXT_COLOR)
            screen.blit(clock_dash, (35, 280))
            
            font = pygame.font.SysFont(None, 20)
            clock_label = font.render(f"Clock Speed: {frames_per_tick}", True, TEXT_COLOR)
            #screen.blit(speed_label, (WIDTH//2 - 50, 60))
            screen.blit(clock_label, (35, 270))

            # Inc/Dec process speed
            font = pygame.font.SysFont(None, 20)
            inc_speed = font.render(f"w -increase", True, TEXT_COLOR)
            screen.blit(inc_speed, (35, 220))
           
            font = pygame.font.SysFont(None, 20)
            dec_speed = font.render(f"e -decrease", True, TEXT_COLOR)
            screen.blit(dec_speed, (35, 235))
            
            # Inc/Dec clock speed
            font = pygame.font.SysFont(None, 20)
            inc_clock = font.render(f"s -increase", True, TEXT_COLOR)
            screen.blit(inc_clock, (35, 290))
           
            font = pygame.font.SysFont(None, 20)
            dec_clock = font.render(f"d -decrease", True, TEXT_COLOR)
            screen.blit(dec_clock, (35, 305))
            
            # Quit/Pause keys
            font = pygame.font.SysFont(None, 20)
            inc_clock = font.render(f"q - Quit", True, TEXT_COLOR)
            screen.blit(inc_clock, (35, 320))
           
            font = pygame.font.SysFont(None, 20)
            dec_clock = font.render(f"p -Pause/Unpause", True, TEXT_COLOR)
            screen.blit(dec_clock, (35, 335))


            pygame.display.flip()
        
    pygame.quit()


if __name__ == "__main__":
    main()