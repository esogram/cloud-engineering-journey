Linux System Information and Health Check

Project Overview

The Linux System Information and Health Check project is a Bash scripting project that collects basic Linux system information and checks disk and memory usage.

The script demonstrates practical Linux administration skills, Bash functions, command-line utilities, conditional statements, input validation, and error logging.

Features

The script provides the following features:

- Hostname: Displays the system's hostname.
- Operating System: Displays information about the installed operating system.
- Kernel Version: Displays the Linux kernel version.
- System Uptime: Shows how long the system has been running.
- Disk Usage: Checks disk usage and reports whether it is within the configured threshold.
- Memory Usage: Calculates memory usage and reports its status against the configured threshold.
- Error Logging: Records specified disk and memory errors with a date and time.
- Log File Exclusion: Uses ".gitignore" to prevent the generated "health_check.log" file from being included in ordinary Git commits.

Requirements

- A Linux environment.
- Bash.
- Standard Linux command-line utilities used by the script, such as "date", "awk", and "df".

Getting Started

1. Clone the repository

git clone https://github.com/esogram/cloud-engineering-journey.git

2. Navigate to the project directory

cd cloud-engineering-journey/linux-system-health-check

3. Make the script executable (if necessary)

chmod +x health_check.sh

4. Run the script

./health_check.sh

Alternatively, run it with Bash:

bash health_check.sh

Error Logging

The script includes a "log_error()" function that records specified errors in "health_check.log".

Each log entry includes the date and time, an error label, and the associated error message.

The log file is generated locally when an error is logged. It is excluded from Git tracking through ".gitignore" so that generated log entries are not accidentally committed to the repository.

Project Structure

linux-system-health-check/
├── health_check.sh
├── .gitignore
├── README.md
└── health_check.log   # Generated locally; ignored by Git

The log file may not exist until the logging function is called.

Learning Objectives

This project provides practical experience with:

- Bash scripting and functions.
- Linux system information commands.
- Disk and memory usage monitoring.
- Conditional statements and validation.
- Error handling and logging.
- Git branching, commits, and pull requests.

Future Improvements

Possible future enhancements include:

- Configurable disk and memory thresholds.
- More comprehensive error handling.
- Automated scheduled health checks.
- Additional system resource monitoring.
- Improved logging and reporting.

Author: Esogram
Aspiring Cloud Engineer | Linux | Bash | Git & GitHub
