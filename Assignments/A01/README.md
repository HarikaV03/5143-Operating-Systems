## Shell Project - Implementation of a Basic Shell

#### Due: TBD

**Parts Due Dates**: TBD

### Group Members:
- Tim Haxton
- Harika Vemulapalli
- Cooper Wolf

## Overview

In this project, we will implement a basic "shell". A shell is a command-line interface we often interact with, and provides an powerful interface with your system. Below is an overview of the actions our shell will perform:

1. Print a prompt(`$: `) to the user.
2. Read a command line from stdin.
3. Tokenize (lexically analyze) the command a create an array of command parts (tokens).
4. Parse the token array to identify the command and its arguments.
5. Execute the command:
    - If necessary, create a child process via `fork()`.
    - The child process receives an additional input (arguments) and executes the appropriate command.

## Requirements

- **Language**: Python
- **Threads (Optional)**:
    - Use threads to execute commands.
    - If no background execution (`&`), wait for the thread to complete before returning control to the shell.
- **Command Features**:
    - Each command returns a string.
    - Commands can accept input from other commands.

Our shell will support the following command types:

### 1. **Exit Command**

- **Command**: `exit`
- **Description**: Terminates the shell.
- **Concepts**: Exiting the shell with system calls like exit().

### 2. **Command without Arguments**

- **Example**: `ls`
- **Description**: Executes a command without arguments and waits for it to complete.
- **Concepts**: Synchronous execution, process forking.

### 3. **Command with Arguments**

- **Example**: `ls -l`
- **Description**: Parses command-line arguments and executes the command.
- **Concepts**: Command-line paramaters.

### 4. **Background Execution (`&`)**

- **Example** `ls &`
- **Description**: Executes a command without blocking, allowing the shell to accept further input immediately.
- **Concepts**: Background execution, signals, asynchronous execution.

### 5. **Output Redirection**

- **Example**: `ls > output.txt`
- **Description**: Redirects the command output to a specified file.
- **Concepts**: File operations, output redirection.

### 6. **Input Redirection**

- **Example**: `sort < inputfile.txt`
- **Description**: Takes input from a file instead of the user’s input.
- **Concepts**: File operations, input redirection.

### 7. **Piping Commands**

- **Example**: `ls -l | more`
- **Description**: Passes the output of one command as input to another command.
- **Concepts**: Pipes, synchronous operations.

## Instructions:
Clone the repository.
install requests if not already done
    - pip install requests
Run the `shell.py` file and use the following commands...

## Commands:
| Command               | Description                                         | Author   |
|-----------------------|-----------------------------------------------------|----------|
| `ls`                  | List files and directories with flags: -l -a -h     | Cooper   |
| `pwd`                 | Print working directory                             | Cooper   |
| `mkdir`               | Create a directory.                                 | Cooper   |
| `cd directory`        | Change to a named directory.                        | Cooper   |
| `cp file1 file2`      | Copy file1 to file2.                                | Tim      |
| `mv file1 file2`      | Move or rename file1 to file2.                      | Tim      |
| `rm -r`               | Recursively delete a directory.                     | Tim      |
| `cat file`            | Display contents of a file.                         | Harika   |
| `head -n`             | Display the first n lines of a file.                | Harika   |
| `tail -n`             | Display the last n lines of a file.                 | Harika   |
| `grep 'pattern' file` | Search for a pattern in a file.                     | Cooper   |
| `wc`                  | Count words/lines in a file with flags: -w -l       | Cooper   |
| `chmod xxx`           | Change file permissions.                            | Cooper   |
| `history`             | Show previously used commands.                      | Cooper   |
| `!x`                  | Re-run command number *x* from history.             | Cooper   |
| `exit`                | Exits the shell.                                    | Cooper   |
| `up & down arrows`    | Navigate previous command                           | Cooper   |
| `left & right arrows` | Move cursor                                         | Cooper   |
| `more`                |                                                     | Tim      |
| `less`                |                                                     | Tim      |
| `[program] > file`    |                                                     |          |
| `[program] < file`    |                                                     |          |
| `hfind`               | ? This may be extra                                 |          |
| `sort`                | Sort data. Includes flags: -n, -r, -a               | Cooper   |

### Help

- Every command will print help information if the user passes `--help` as an argument.

## Non-Working Components:
- `cp`
- `mv`
- `rm`
- `cat`
- `head`
- `tail`
- `more`
- `less`
- `<`
- `>`
- `hfind`

## Extras
- Color list contents if they are directory (blue) or executable (green)
- ls -merica: executes like "ls -lah" but with red white and blue pattern
- date: displays date and time
- clear: clears the screen
- ip: displays ip address
- run command runs an application

## References:
- [geeksforgeeks](https://www.geeksforgeeks.org/python/executing-shell-commands-with-python/)
- [ChatGPT](https://chatgpt.com/)
- [Python Docs](https://docs.python.org/3/library/os.html)
- [Terminal Width](https://www.google.com/search?q=get+terminal+width+python&rlz=1C1VDKB_enUS1178US1178&oq=get+terminal+w&gs_lcrp=EgZjaHJvbWUqBwgAEAAYgAQyBwgAEAAYgAQyBggBEEUYOTINCAIQABjwBRieBhjIBjIHCAMQABiABDIHCAQQABiABDIICAUQABgWGB4yCAgGEAAYFhgeMggIBxAAGBYYHjIICAgQABgWGB4yCAgJEAAYFhgeqAIHsAIB8QVQ2yUT5i1rPPEFUNslE-Ytazw&sourceid=chrome&ie=UTF-8&safe=active&ssui=on) "get terminal width python", Google AI Summary, 9 Sep 2025
- [Terminal Username](https://www.google.com/search?q=get+terminal+username+python&sca_esv=e7bf22627bcd1c5c&rlz=1C1VDKB_enUS1178US1178&ei=REvAaIzVNv21qtsPwYnX4Q0&ved=0ahUKEwiMh5DkgsyPAxX9mmoFHcHENdwQ4dUDCBI&uact=5&oq=get+terminal+username+python&gs_lp=Egxnd3Mtd2l6LXNlcnAiHGdldCB0ZXJtaW5hbCB1c2VybmFtZSBweXRob24yBRAhGKABMgUQIRigATIFECEYoAEyBRAhGKABMgUQIRigATIFECEYnwUyBRAhGJ8FMgUQIRifBTIFECEYnwUyBRAhGJ8FSMwLUCNY9AlwAXgBkAEAmAFroAH6BKoBAzYuMbgBA8gBAPgBAZgCCKACkQXCAgoQABiwAxjWBBhHwgIGEAAYFhgewgIIEAAYgAQYogTCAgUQIRirApgDAIgGAZAGCJIHAzcuMaAH0SyyBwM2LjG4B40FwgcFMC43LjHIBw8&sclient=gws-wiz-serp&safe=active&ssui=on) "get terminal username python", Google AI Summary, 9 Sep 2025