# This program implements a basic shell with the following commands:
# 1. exit
	# - terminates the shell
# 2. commands without arguments: 
	# - executes a command without arguments and waits for 
	# it to complete
# 2a. ls -a, -h, and -l
	# - list all files, including hidden ones, long listing 
	# format, human-readable file sizes
# 2b. mkdir
	# - create a directory
# 2c. cd (directory)
	# - change to a named directory or the home directory if
	# no argument is provided
# 2d. pwd
	# - print the current directory
# 2e. cp (file1, file2)
	# - copy file1 to file2
# 2f. mv (file1, file2)
	# - move or rename file1 to file2
# 2g. rm -r
	# - recursively delete a directory
# 2h. cat (file)
	# - display contents of a file
# 2i. head -n
	# - display the first n lines of a file
# 2j. tail -n
	# - display the last n lines of a file
# 2k. grep ('pattern', file)
	# - search for a pattern in a file
# 2l. wc -l, -w
	# - count the lines or words in a file
# 2m. chmod (xxx)
	# - change file permissions
# 3. command with arguments
	# - parses command-line arguments and executes the command
# 4. background execution
	# - executes a command without blocking, allowing the shell to
	# accept further input immediately
# 5. output redirection
	# - redirects the output to a specified file
# 6. input redirection
	# - takes input from a file instead of the user's input
# 7. piping commands
	# - passes the output of one command as input to another
	# command

import os
import sys
import pwd
import grp
import stat
import socket 
import getpass
import time
from time import sleep

from getch import Getch
from colorama import init, Fore, Style
import requests
#from rich import print
import shutil
import re

getch = Getch()  # create a new instance of class Getch
# print(prompt)
# sys.argv[0]
# argc = len(sys.argv)
# input()

def WelcomeMessage():
    """
    Prints the welcome message for the shell.

    This function displays a formatted introduction to the shell,
    including available commands and usage instructions.
    It uses colored text for better visibility.

    Parameters:
        None
    Returns:
        None
    """
    print()
    print(f"{Fore.GREEN}Welcome to the Simple Shell!")
    print("---------------------------------------------------------------------")
    print(f"{Fore.GREEN}To see avaiable commands, type 'help' [Need to implement help command].")
    print(f"{Fore.GREEN}Type '<command> --help' for information on a specific command.")
    print(f"{Fore.GREEN}Type 'exit' or ctrl + c to quit.")
    print(f"{Fore.GREEN}Designed and implemented by Tim Haxton, Harika Vemulapalli, and Cooper Wolf.")
    print(f"{Fore.GREEN}Don't steal our code, we'll sue.")
    print("---------------------------------------------------------------------")
    print()

def get_terminal_width():
    '''
    Returns the width of the terminal in characters.
    '''
    try:
        size = shutil.get_terminal_size()
        return size.columns
    except OSError:
        # Handle cases where no terminal is connectec (e.g., running in an IDE
        # without a console)
        # You can return a default value or raise a custom error here.
        return 80  # Default to 80 columns if size cannot be determined

def exit():
    '''
    Exit the shell.

    Exits the shell with a status of N. If N is omitted, the exit status 
    is that of the last command executed
    '''
    print(f"{Fore.GREEN}Okay Bye")  # moves next command line to new line
    raise SystemExit

# Helper function for ls_with_args
def color_filename(item, full_path):
    '''
    Returns a colored string for a filename based on its type.
    
    - Directories → Blue
    - Executable files → Green
    - Other files → Default color
    '''
    
    # Coloring the directories blue
    if os.path.isdir(full_path):
        return Fore.BLUE + item + Style.RESET_ALL
    
    # Coloring the executables green
    elif os.access(full_path, os.X_OK):
        return Fore.GREEN + item + Style.RESET_ALL
    
    # Leaving all other itms default color
    return item
    
# Helper functin for ls_with_args
def format_long_listing(full_path, human = False):
    '''
    Returns detailed metadata for a file in "long listing" format.
    
    Parameters:
        item (str): The filename.
        human (bool): If True, convert file size to human-readable format.
    
    Returns:
        list: [permissions, links, owner, group, size, mod_time, colored_name]
    '''
    
    # Getting full path of the item and info about the item
    file_info = os.stat(full_path)

    # Retreiving info about item
    permissions = stat.filemode(file_info.st_mode)
    links       = file_info.st_nlink
    owner       = pwd.getpwuid(file_info.st_uid).pw_name
    group       = grp.getgrgid(file_info.st_gid).gr_name
    size        = human_readable(file_info.st_size) if human else file_info.st_size
    mod_time    = time.strftime("%b %d %H:%M", time.localtime(file_info.st_mtime))
    
    # coloring item name depending on type
    name        = color_filename(os.path.basename(full_path), full_path)

    # Returning all item information
    return [permissions, links, owner, group, size, mod_time, name]
    #return f"{permissions} {links} {owner} {group} {size} {mod_time} {name}"

# Helper function for ls_with_args
def get_directory_items(directory = None, include_hidden = False):
    '''
    Returns a list of items in the current directory.
    
    Parameters:
        include_hidden (bool): If True, include hidden files along with "." and "..".
    
    Returns:
        list: Filenames in the directory.
    '''
    
    # Storing items from directory into items list
    if directory:
        items = os.listdir(directory)
    
    if not directory:
        items = os.listdir()
        
        
    non_hidden_items = []
    
    # If wanting all items return items + . and ..
    if include_hidden:
        return ['.', '..'] + items
    
    # Return only non hidden items
    else:
        for item in items:
            if not item.startswith('.'):
                non_hidden_items.append(item)
                
        return non_hidden_items

def human_readable(size):
    """
    Convert a file size in bytes to a human-readable format.

    This function takes a file size in bytes and converts it to a more
    human-friendly format (e.g., K, M, G) with two decimal places.

    Parameters:
        size (int): The file size in bytes.

    Returns:
        str: The file size in a human-readable format.
    """
    
    # Convert size to float for division
    size = float(size)
    
    # Define units for conversion
    units = ["K", "M", "G"]
    i = 0

    # Loop to convert size to appropriate unit
    while size >= 1024 and i < len(units):
        size /= 1024
        i += 1

    # If size is less than 1K, show in bytes without decimal
    if i == 0:
        return f"{int(size)}"
    
    # Otherwise, show with one decimal place and appropriate unit
    else:
        return f"{size:.1f}{units[i-1]}"

def ls(parts):
    '''
    Usage: ls [OPTION]... [FILE]...
    List information about FILEs (the current directory by default).
    Sort entries alphabetically if none of -cftuvSUX nor --sort is specified.

    Mandatory arguments to long options are mandatory for short options too.
      -a, --all                 do not ignore entries starting with .
      -h, --human-readable      with -l, print sizes linke 1K 234M 2G etc.
      -l                        use a long listing format
          --help        display this help and exit

    Exit status:
      0  if OK,
      1  if minor problems (e.g., cannot access subdirectory),
      2  if serious trouble (e.g., cannot access command-line argument).
    '''

    # directory to store output information
    output = {"output" : None, "error" : None}
    
    
    input = parts.get("input", None)
    flags = parts.get("flags", None)
    params = parts.get("params", None)    
    
    # Used to store directory from params
    ls_directory = ""
    
    if input:
        pass

    # If user wants to ls a certain directory, grab the directory name if it's a directory
    if len(params) == 1:
        
        # Getting directory info from param given
        
        # Convert params list to string
        str_params = " ".join(params)
    
        # Remove single quotes if they exist
        str_params = str_params.strip("'")
        
        # Determining which directory to display info from
        if params == "..":
            ls_directory = params
            
        elif os.path.isdir(str_params):
            ls_directory = str_params
            
        elif not os.path.isdir(str_params):
            output["error"] = f"Error. {str_params} is not a directory."
            return output
        
        
    # return error if there are more than 1 parameters
    elif len(params) > 1:
        output["error"] = "ls has too many parameters"
        return output
        
    # User wants to print list from current directory
    if not flags:
        # list to store items
        items = []
            
        for item in get_directory_items(ls_directory):
            # Get full path to apply correct coloring
            full_path = os.path.join(ls_directory or os.getcwd(), item)
            items.append(color_filename(item, full_path))
            
        # Returning sorted list of items
        items.sort()
            
        # Convert to string
        result = " ".join(items)
        output["output"] = result
        return output
    
    # Executing ls that has flags
    if flags:
        # Storing the argument
        option = flags
    
        # List that stores directory contents
        directory_list     = get_directory_items(ls_directory)
        all_directory_list = get_directory_items(ls_directory, include_hidden = True)
        
        # Using -h alone prints the same as no args
        if option == "h": 
            
            # list to store items
            items = []
            
            for item in directory_list:
                # Get full path to apply correct coloring
                full_path = os.path.join(ls_directory or os.getcwd(), item)
                items.append(color_filename(item, full_path))
            
            # Returning sorted list of items
            items.sort()
            
            # Convert to string
            result = " ".join(items)
            output["output"] = result
            return output
                
                
        # Using -a alone or with -h prints all files including hidden
        elif option in ("a","ah", "ha"):
            
            # list to store directory items
            items = []
            
            # Getting items in directory including hidden and coloring
            # depending on item type
            for item in all_directory_list:
                
                # Get full path to apply correct coloring
                full_path = os.path.join(ls_directory or os.getcwd(), item)
                items.append(color_filename(item, full_path))
            
            # Returning sorted list of items
            items.sort()
            
            # Convert to string
            result = " ".join(items)
            output["output"] = result
            return output
            
        # Using -l alone
        elif option == "l":
            
            items = []
            total_size = 0
            
            # Getting block size
            for item in directory_list:
                full_path = os.path.join(ls_directory or os.getcwd(), item)
                file_info = os.stat(full_path)
                total_size += file_info.st_blocks
            
            # Printing size of directory
            print("total", total_size // 2)
            
            # Print details for each file
            for item in directory_list:
                    
                # Getting info about the item and adding it to list
                full_path = os.path.join(ls_directory or os.getcwd(), item)
                items.append(format_long_listing(full_path))
                    
            # Return items sorted by filename
            items = sorted(items, key=lambda x: x[-1].lower())
            
            format_list = []
            for item in items:
                line = f"{item[0]:<10} {item[1]:<3}{item[2]:<8}{item[3]:<8}{item[4]:>8} {item[5]:<12} {item[6]}"
                format_list.append(line)
                
            # Convert to string and return
            result = "\n".join(format_list)
            output["output"] = result
            return output
        
            
        # Using -al or -la prints all files in long format
        elif option in ("al", "la"):
                
            total_size = 0
            items = []
            
            # Calculate total size of all files in directory
            for item in all_directory_list:
                full_path = os.path.join(ls_directory or os.getcwd(), item)
                file_info = os.stat(full_path)
                total_size += file_info.st_blocks
            
            print("total", total_size // 2)
            
            # Print details for each file
            for item in all_directory_list:
                    
                # Getting info about the item and adding it to list
                full_path = os.path.join(ls_directory or os.getcwd(), item)
                items.append(format_long_listing(full_path))
                    
            # Sort items by filename
            items = sorted(items, key=lambda x: x[-1].lower())
            
            # formatting list before converting to string
            format_list = []
            for item in items:
                line = f"{item[0]:<10} {item[1]:<3}{item[2]:<8}{item[3]:<8}{item[4]:>8} {item[5]:<12} {item[6]}"
                format_list.append(line)
            
            # Converting to string and returning
            result = "\n".join(format_list)
            output["output"] = result
            return output
            
        # Using -lh or -hl prints files in long format with human readable sizes
        elif option in ("lh", "hl"):
            
            total_size = 0
            items = []
            
            # Calculate total size of all non-hidden files in directory
            for item in directory_list:
                full_path = os.path.join(ls_directory or os.getcwd(), item)
                file_info = os.stat(full_path)
                total_size += file_info.st_blocks
            
            # st_blocks * 512 = byte
            print("total", human_readable(total_size * 512))
            
            # Print details for each file
            for item in directory_list:
                    
                # Getting item info and adding to list
                full_path = os.path.join(ls_directory or os.getcwd(), item)
                items.append(format_long_listing(full_path, human = True))
                    
            # Returning items sorted by filename
            items = sorted(items, key=lambda x: x[-1].lower())
            
            # formatting list before converting to string
            format_list = []
            for item in items:
                line = f"{item[0]:<10} {item[1]:<3}{item[2]:<8}{item[3]:<8}{item[4]:>8} {item[5]:<12} {item[6]}"
                format_list.append(line)
            
            # Converting to string and returning
            result = "\n".join(format_list)
            output["output"] = result
            return output
            
        # Using -alh or any combo of those three prints all files in long format with human readable sizes
        elif option in ("alh", "ahl", "lah", "lha", "hal", "hla"):
            
            total_size = 0
            items = []
            
            # Calculate total size of all files in directory
            for item in all_directory_list:
                full_path = os.path.join(ls_directory or os.getcwd(), item)
                file_info = os.stat(full_path)
                total_size += file_info.st_blocks
            
            # st_blocks * 512 = byte
            print("total", human_readable(total_size * 512))
            
            # Print details for each file
            for item in all_directory_list:
                    
                # Getting item info and adding to list
                full_path = os.path.join(ls_directory or os.getcwd(), item)
                items.append(format_long_listing(full_path, human = True))
                    
            # Returning items sorted by filename
            items = sorted(items, key=lambda x: x[-1].lower())
            
            # formatting list before converting to string
            format_list = []
            for item in items:
                line = f"{item[0]:<10} {item[1]:<3}{item[2]:<8}{item[3]:<8}{item[4]:>8} {item[5]:<12} {item[6]}"
                format_list.append(line)
            
            # Converting to string and returning
            result = "\n".join(format_list)
            output["output"] = result
            return output
            
        # Invalid option
        else:
            output["error"] = "ls: invalid option. Try 'ls --help for more info."
            return output
        
    output["error"] = "Error"
    return output

def mkdir(parts):
    '''
    Usage: mkdir [OPTION]... DIRECTORY...
    Create the DIRECTORY(ies), if they do not already exist.

    Mandatory arguments to long options are mandatory for short options too.
          --help        display this help and exit
    '''

    # These are lists
    input = parts.get("input", None)
    flags = parts.get("flags", None)
    params = parts.get("params", None)
    
    # Dictionary to return
    output = {"output" : None, "error" : None}
    
    # Make sure user only ran mkdir [directory]
    if not input and not flags:
        # Convert params list to string
        str_params = " ".join(params)
        
        # Remove single quotes if they exist
        str_params = str_params.strip("'")

        if os.path.isabs(str_params):
            
            # Getting the absolute path from argumen
            path = str_params

        # if relative path, join with current working directory
        elif not os.path.isabs(str_params):
            
            # Getting new directory name, current working directory
            # and joining them to create full path
            new_dir = str_params
            cwd     = os.getcwd()
            path    = os.path.join(cwd, new_dir)
            
        # Creating the directory and handling errors
        try:
            os.mkdir(path)
        except OSError as e:
            output["error"] = f"Error: {e}"
            
            
    # User entered incorrect command format
    else:
        output["error"] = "Error. Mkdir command only takes a directory."
        
        
    return output

def cd(parts):
    '''
    Change the shell working directory.

    Change the current directory to DIR. The default DIR is the value of the
    HOME shell variable. If DIR is "-", it is converted to $OLDPWD.

    The variable CDPATH defines the search path for the directory containing
    DIR. Alternative directory names in CDPATH are separated by a colon (:).
    A null directory name is the same as the current directory. If DIR begins
    with a slash (/), then CDPATH is not used.

    If the directory is not found, and the shell option 'cdable_vars' is set,
    the word is assumed to be a variable name. If that variable has a value,
    its value is used for DIR.

    Exit Status:
    Returns 0 if the directory is changed; non-zero otherwise.
    '''

    # These are lists
    input = parts.get("input", None)
    flags = parts.get("flags", None)
    params = parts.get("params", None)
    
    # Dictionary to return
    output = {"output" : None, "error" : None}
    
    
    if input:
        output["error"] = "Error. Command should not have an input."
        return output
    
    if flags:
        output["error"] = "Error. Command doesn't take flags."
        return output
        
        
    # Changing output dictionary so it can be checked
        
    # Convert params list to string
    str_params = " ".join(params)
    
    # Remove single quotes if they exist
    str_params = str_params.strip("'")
    
        
    # User wants to go to home directory
    if str_params == "":
        homedir = os.path.expanduser("~")
        os.chdir(homedir)
        
        # User wants to go to parent directory
    if str_params == "..":
        os.chdir("..")
            
    # User wants to go to differnt directory
    elif os.path.isdir(str_params):
        os.chdir(str_params)
            
    # If path doesn't exist and params isn't empty
    elif not os.path.isdir(str_params) and str_params != "":
        output["error"] = f"Error. {str_params} is not a directory."
        
    # Returning output dictionary
    return output

def pwd():
    '''
    Print the name of the current working directory.

    Exit Status:
    Returns 0 unless an invalid option is given or the current directory
    cannot be read
    '''

    output = {"output" : None, "error" : None}
    
    # Storing cwd
    cwd = os.getcwd()
    
    # Storing it into output dictionary and returning
    output["output"] = cwd 
    return output

def cp():
    '''
    Copy SOURCE to DEST.

          --help        display this help and exit
    '''

def mv(file1, file2):
    '''
    Rename SOURCE to DEST

          --help        display this help and exit
    '''

def rm():
    '''
    Usage: rm [OPTION]... [FILE]...
    Remove (unlink) the FILE(s).

      -r, -R, --recursive   remove directories and their contents recursively
              --help    display this help and exit

    By default, rm does not remove directories. Use the --recursive (-r or -R)
    option to remove each listed directory, too, along with all of its contents.

    To remove a file whose name starts with a '-', for example '-foo',
    use one of these commands:
        rm -- -foo
        rm ./-foo
    '''

def cat(file):
    '''
    Usage: cat [FILE]...

    Example:
        cat f - g   Output f's contents, t hen standard input, then g's contents.
        cat         Copy standard input to standard output.
    '''
    import sys

    output = ""

     #if no file provided, read from stdin once
    if not file:
        output = sys.stdin.read()
        return output
    for f in file:
        if f == '-':
            #read from standard input here
            output += sys.stdin.read()
        else:
            try:
                with open(f,'r') as file_handle:
                    output += file_handle.read()
            except FileNotFoundError:
                output += f"cat: {f}: No such file or directory\n"
            except Exception as e:
                output += f"cat: {f}: {str(e)}\n"
    return output
 
def head():
    '''
    Usage: head [OPTION]... [FILE]...
    Print the first 10 lines of each FILE to standard output.
    With more than one FILE, precede each with a header giving the file name.

    With no FILE, or when FILE is -, read standard input.

    Mandatory arguments to long options are mandatory for short options too.
        -n, --lines=[-]NUM      print the first NUM lines instead of the first 10;
                                with the leading '-', print all but the last
                                NUM lines of each file

    NUM may have a multiplier suffix:
    b 512, kB 1000, K 1024, MB 1000*1000, M 1024*1024,
    GB 1000*1000*1000, G 1024*1024*1024, and so on for T, P, E, Z, Y, R, Q.
    Binary prefixes can be used, too: KiB=K, MiB=M, and so on.
    '''

def tail():
    '''
    Usage: tail [OPTION]... [FILE]...
    Print the last 10 lines of each FILE to standard output.
    With more than one FILE, precede each with a header giving the file name.
    
    Mandatory arguments to long options are mandatory for short options too.
        -n, --lines=[+]NUM      output the last NUM lines, instead of the last 10;
                                or use -n +NUM to skip NUM-1 lines at the start
    NUM may have a multiplier suffix:
    b 512, kB 1000, K 1024, MB 1000*1000, M 1024*1024,
    GB 1000*1000*1000, G 1024*1024*1024, and so on for T, P, E, Z, Y, R, Q.
    Binary prefixes can be used, too: KiB=K, MiB=M, and so on.
    '''

def grep():
    '''
    Usage: grep PATTERNS [FILE]...
    Search for PATTERNS in each FILE.
    Example: grep 'hello world' menu.h main.c
    PATTERNS can contain multiple patterns separated by newlines.

    When FILE is '-', read standard input. With no FILE, read '.' if
    recursive, '-' otherwise.
    Exit status is 0 if any line is selected, 1 otherwise;
    if any error occurs, the exit status is 2.
    '''

def wc():
    '''
    Usage: wc [OPTION]... [FILE]...
      or:  wc [OPTION]... --files0-from=F
    Print newline, word, and byte counts for each FILE, and a total line if
    more than one FILE is specified. A word is a non-zero-length sequence of
    printable characters delimited by a white space.

    With no FILE, or when FILE is -, read standard input.

    The options below may be used to select which counts are printed, always in
    the following order: newline, word, character, byte, maximum line length.
        -l, --lines             print the newline counts
            --files0-from=F     read input from the files specified by
                                NUL-terminated names in file F;
                                If F is - then read names from standard input
        -w, --words             print the word counts
            --total=WHEN        when to print a line with total counts;
                                When can be: auto, always, only, never
            --help      display this help and exit
    '''

def chmod():
    '''
    Usage: chmod OCTAL-MODE FILE...
    Change the mode of each FILE to MODE.
    '''

def history(parts):
    """
    Display or manipulate the history list.

    Display the history list with line numbers, prefixing each modified
    entry with a '*'.

    history.txt will be used as the filename for history. If it exists,
    it will be updated. Otherwise, it will be created in the user's 
    HOME folder

    Exit Status:
    Returns success unless an invalid option is given or an error occurs.
    """
    
    # These are lists
    input = parts.get("input", None)
    flags = parts.get("flags", None)
    params = parts.get("params", None)
    
    # Dictionary to return
    output = {"output" : None, "error" : None}
    
    # If there exist any input flags and params in the dict, dont execute
    if not input and not flags and not params:
        
        # Get the absolute path of the folder where the script is located
        script_dir = os.path.dirname(os.path.abspath(__file__))

        # Build the full path to history.txt inside your repo
        history_file = os.path.join(script_dir, "history.txt")

        history_list = []
        command_number = 1

        # Check if history file exists
        if os.path.exists(history_file):
            
            # Opening history file
            with open(history_file, "r") as file:
                
                # Storing contents into commands
                commands = file.readlines()
                
                # Getting each line
                for command in commands:
                    
                    # Appending the command alone with its command number to list
                    history_list.append(f"{command_number} {command.strip()}")
                    command_number += 1
            
            # Appending the history command that was just executed
            history_list.append(f"{command_number} history")
            
            # Convert to string and return
            result = "\n".join(history_list)
            output["output"] = result
            return output
      
        
        # If history_file does not exist, return None
        else:
            output["error"] = "Error, History file doesn't exist in the directory that this pythons script is in."
            return output
        
    # If user added on top of history command
    else:
        output["error"] = "Error, history command must not have any params, input, or flags."
    
    
def get_history_rev():
    """
    Opens history text file and returns the contents.

    This function retrieves the previous command from the history file
    and returns it. If there is no previous command, it returns None.

    Parameters:
        None
    Returns:
        List of all commands in history file.
    """
    
    # Get the absolute path of the folder where the script is located
    script_dir = os.path.dirname(os.path.abspath(__file__))

    # Build the full path to history.txt inside your repo
    history_file = os.path.join(script_dir, "history.txt")

    # Check if history file exists
    if os.path.exists(history_file):
        with open(history_file, "r") as file:
            h_cmds = file.readlines()
            
            # Remove the last value if its empty
            if h_cmds and h_cmds[-1].strip() == "":
                h_cmds.pop()
            
            # Removing '\n' at the end of each command
            h_cmds = [item.strip() for item in h_cmds]
            
            # Reversing list
            h_cmds.reverse()
            
            # Return list of all commands in history in reverse order
            return h_cmds
            
    else:
        # History file doesn't exist
        return None
    
    
# This functions works as the !x command
def cmd_from_history(index):
    '''
    Functions handles the !x command by getting the index value from 
    the command and retrieves the history commands then return the at 
    the index given
    '''
    
    # directory to store output information
    output = {"output" : None, "error" : None}
    
    # setting index to only value, removing '!'
    index = index[1:]
    
    index = int(index)
    index -= 1
    h_cmds = get_history_rev() or []
        
    # Reverse list so commands are in chronological
    if h_cmds:
        h_cmds.reverse()
        
    # Geting history commands
    if 0 <= index < len(h_cmds):
        
        # Returning cmd at given index
        output["output"] = h_cmds[index].strip()
        return output
    
    # if index is out of range of history
    else:
        output["error"] = f"Error. There are only {len(h_cmds)} commands in history."
        return output
       
       
def write_to_history(cmd):
    '''
    # write out the command to the history file
    # so you can access it later with the up/down arrows
    '''
          
    # Get the absolute path of the folder where the script is located
    # Since this script and the history file are in the same directory:
    script_dir = os.path.dirname(os.path.abspath(__file__))

    # Build the full path to history.txt inside your repo
    history_file = os.path.join(script_dir, "history.txt")

    # Append command to the file
    with open(history_file, "a") as file:
        file.write(cmd + "\n")
       
def clear():
    """
    Clear the terminal screen.
    This function clears the terminal screen by executing the appropriate system command.
    Parameters:
        None
    Returns:
        None
    """
    os.system("clear")

def parse_cmd(cmd_input):
    
    command_list = []
    
    cmds = cmd_input.split("|")
    
    for cmd in cmds:
        
        # Need to have a check while procession that if error has error in it, stop processing.
        
        d = {"input" : None, "cmd" : None, "params" : [], "flags" : None, "error" : None}
        subparts = cmd.strip().split()
        d["cmd"] = subparts[0]
        
        # Going thorugh the rest of the subparts to classify and store correctly
        for item in subparts[1:]:
            
            if item.startswith("-"):
                d["flags"] = item[1:]
            else:
                d["params"].append(item)
                
        # Appending the correct dictionary to command list
        command_list.append(d)
        
    return command_list

def visible_length(s):
    '''Helper function for print_cmd. This is needed to bring the terminal cursor to the correct
    position. Previously. it was offset by the length of ({Fore.CYAN}{Style.RESET_ALL}). So this
    funciton removes that from the prompt so the cursor can be in the correct position.
    '''
    
    # Step by step:
    # \x1b         -> The escape character signaling the start of an ANSI sequence
    # \[           -> Matches the literal '[' that follows the escape character
    # [0-9;]*      -> Matches any digits or semicolons (e.g., 36, 1;32) zero or more times
    # m            -> Matches the literal 'm' at the end of the ANSI code
    # Together: \x1b\[[0-9;]*m matches things like:
    #    \x1b[36m    -> set cyan text
    #    \x1b[0m     -> reset text style/color
    #    \x1b[1;32m  -> bold green text

    # re.compile() -> Compiles this regex pattern for reuse
    # ansi_escape.sub('', s) -> Removes all ANSI sequences from the string
    # len(...) -> Counts only the visible characters, ignoring color codes
    ansi_escape = re.compile(r'\x1b\[[0-9;]*m')
    return len(ansi_escape.sub('', s))

def print_cmd(cmd, cursor_pos=0):
    '''
    This function "cleans" off the command line, then prints
    whatever cmd that is passed to it to the bottom of the terminal.
    '''
    
    # Update prompt info with current data 
    username = getpass.getuser()
    computer_name = socket.gethostname()
    cwd = os.getcwd()
    
    # Storing built prompt
    prompt = f"{Fore.CYAN}{username}@{computer_name}:{cwd}{Style.RESET_ALL}$ "
    
    #padding = " " * get_terminal_width()
    #sys.stdout.write("\r" + padding)
    
    
    # Move cursor to start, print prompt + command
    sys.stdout.write("\r")
    sys.stdout.write(f"{prompt}{cmd}")
    
    # Clear everything to the right of the cursor
    sys.stdout.write("\033[K")
    
    # Move cursor to start
    sys.stdout.write("\r")
    
    # Move cursor to the right the length of the prompt plus cursor position, and flush
    sys.stdout.write(f"\033[{visible_length(prompt) + cursor_pos}C")
    sys.stdout.flush()

#######################  Beginning of Main  ###########################
if __name__ == "__main__":

    # Allows for colored text in terminal and resets color after each print
    init(autoreset=True)

    # Print welcome message
    WelcomeMessage()
    
    # Empty cmd variable
    cmd = ""
    
    # For handling left/right arrow keys
    cursor_pos = 0

    # For handling up/down arrow keys
    history_index = -1
    
    # Print to terminal
    print_cmd(cmd)

    # Loop forever
    while True:

        char = getch()  # read a character (but don't print)

        # Exit shell on ctrl-c command
        if char == "\x03":
            print()
            exit()

        # If back space pressed, remove the character to the left of the cursor
        if char == "\x7f":
            if cursor_pos > 0:
                cmd = cmd[:cursor_pos-1] + cmd[cursor_pos:]
                cursor_pos -= 1
            print_cmd(cmd, cursor_pos)

        elif char in "\x1b":  # arrow key pressed
            null = getch()  # waste a character
            direction = getch()  # grab the direction
            
            # Get updated history if avaible
            h_cmd = get_history_rev() or []

            if direction in "A":  # up arrow pressed
                
                # Get list of history commands
                if h_cmd and history_index < len(h_cmd) - 1:
                    
                    # Get the previous command from history depending on
                    # history_index and increment index
                    history_index += 1
                    cmd = h_cmd[history_index]
                    
                    
                # If at the end of history, stay there
                else:
                    # already at the oldest command
                    # so set cmd to end of h_cmd list
                    cmd = h_cmd[-1]
                    
                # Moving cursor to length of new cmd and print cmd
                cursor_pos = len(cmd)
                print_cmd(cmd, cursor_pos)

            if direction in "B":  # down arrow pressed
                
                # get the NEXT command from history (if there is one)
                if h_cmd and history_index > 0:
                    
                    # Get the previous command from history depending on
                    # history_index and decrement index
                    history_index -= 1
                    cmd = h_cmd[history_index]

                    
                # At the newest, go to blank like
                else:
                    
                    # Getting a blank line
                    history_index = -1
                    cmd = ""
                    
                # Moving cursor to length of new cmd and print cmd
                cursor_pos = len(cmd)
                print_cmd(cmd, cursor_pos)

            if direction in "C":  # right arrow pressed
                # move the cursor to the right on your command prompt line
                if cursor_pos < len(cmd):
                    cursor_pos += 1
                print_cmd(cmd, cursor_pos)

            if direction in "D":  # left arrow pressed
                # moves the cursor to the left on your command prompt line
                if cursor_pos > 0:
                    cursor_pos -= 1
                print_cmd(cmd, cursor_pos)


        elif char in "\r":  # return pressed
            
            # Printing blank line to info isn't overwritten
            print()
            
            if cmd == "exit":
                exit()
                
            # If there is a command to execute
            if(cmd):
                
                # Part command and returning list of dictionaries
                command_list = parse_cmd(cmd)
                result = {"output" : None, "error" : None}
                
                # Handle if user wants to run !x command
                if len(command_list) == 1 and command_list[0].get("cmd").startswith("!"):
                    
                    # Get the cmd and send to function.
                    # It includes ! but we will remove in function
                        result = cmd_from_history(command_list[0].get("cmd"))
                        
                        #Setting cmd to 'x' command from !x
                        if result["error"]:
                            
                            # Set command list to zero
                            command_list = []
                            
                        # Setting command_list to result command from !x command
                        else:
                            command_list = parse_cmd(result["output"])
                            cmd = result["output"]
                            
                            # Printing to the user what is about to be executed
                            print()
                            print("Command(s) being executed.")
                            print("--------------------")
                            for command in command_list:
                                print("Command:", command.get("cmd"))
                                print("Flags:", command.get("flags"))
                                print("Params:", command.get("params"))
                                print("Input:", command.get("input"))
                                print("--------------------")
                            print()

            
                while len(command_list) != 0:
            
                    # Pop first command off of the command list
                    command = command_list.pop(0)
                    
                    # Kill execution if error
                    if result["error"]:
                        break

                        
                    if command.get("cmd") == "cd":
                        result = cd(command)
                    elif command.get("cmd") == "ls":
                        result = ls(command)
                    elif command.get("cmd") == "pwd":
                        result = pwd()
                    elif command.get("cmd") == "mkdir":
                        result = mkdir(command)
                    elif command.get("cmd") == "history":
                        result = history(command)

                            
                # Printing result to screen
                if result["error"]:
                    print(result["error"])
                elif result["output"]:
                    print(result["output"])


            # Writing command to history
            write_to_history(cmd)

            # Setting cmd back to blank and cursor back to 0
            cmd = ""
            cursor_pos = 0
            
            print_cmd(cmd)  # now print empty cmd prompt on next line
            
        else:
            # Concatenate the typed character at the cursor position
            cmd = cmd[:cursor_pos] + char + cmd[cursor_pos:]
            
            # move cursor position to the right
            cursor_pos += 1
            
            # add typed character to our "cmd"
            print_cmd(cmd, cursor_pos)
