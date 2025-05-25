import logging as file_logger
import subprocess
import os

def initLogger():
    # Path for the log file
    log_file_path = os.getcwd() + "/logging_unsat.txt"

    # Check if the log file exists
    if os.path.exists(log_file_path):
        # If it exists, delete it
        os.remove(log_file_path)

    file_logger.basicConfig(filename=log_file_path, level=file_logger.DEBUG,
                    format='%(asctime)s - %(levelname)s - %(message)s')


def createDirectory(path):
    try:
        os.mkdir(path)
    except FileExistsError:
        #print(f"Directory '{path}' already exists.")
        return
    except PermissionError:
        print(f"Permission denied: Unable to create {path}.")
    except Exception as e:
        print(f"An error occurred: {e} while creating {path}")


class logger_level:
    debug = "debug"
    info = "info"
    error = "error"
    success = "success"
    warn = "warn"

def LOG(msg, what=logger_level.info, severe=False):
    if what == logger_level.error:
        file_logger.error(msg)

    elif what == logger_level.info:
        file_logger.info(msg)

    elif what == logger_level.debug:
        file_logger.debug(msg)

    elif what == logger_level.warn:
        file_logger.warning(msg) 

    elif what == logger_level.success:
        file_logger.debug(msg)


def print_msg_from_child(process):
    stdout, stderr = process.communicate()
    if len(stdout.decode()):
        print("Output:", stdout.decode())
    
    if len(stderr.decode()):
        print("Error:", stderr.decode())
        print("Process is terminating now")


def execute_command(command, child_name = "child",
                         print_msg = False, need_live_output = False,
                         env = None, shell = False, timeout=10):

    LOG(msg=f"creating and running '{child_name}' process",
         what=logger_level.debug,
         severe=False)

    stdout = subprocess.PIPE
    stderr = subprocess.PIPE

    if( need_live_output ):
        stdout = None
        stderr = None

    LOG(msg=f"Command : {command}", what= logger_level.debug, severe=False)
    process = subprocess.Popen(command, stdout=stdout, stderr=stderr,
                               env = env, shell= shell)

    try:
        process.wait(timeout=timeout)
    except subprocess.TimeoutExpired:
        LOG(msg=f"'{child_name}' terminated due to timeout",
         what=logger_level.warn,
         severe=False)
        return None, None

    if (process.returncode != 0):
        LOG(msg=f"error occured in '{child_name}' process",
         what=logger_level.error,
         severe=False)

    # Print the output and error messages if any
    if(print_msg):
        print_msg_from_child(process)

    LOG(msg=f"'{child_name}' process execution finished",
         what=logger_level.success,
         severe=False)

    stdout, stderr = process.communicate()

    return stdout, stderr

