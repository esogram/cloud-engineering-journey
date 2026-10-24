#!/bin/bash
set -o pipefail
show_hostname () {
echo "Hostname:" 
hostname
}
show_hostname

show_ubuntu_operating_system_information () {
echo "Ubuntu Operating System Information:"
lsb_release -ds
}
show_ubuntu_operating_system_information

show_kernel_version () {
echo "Linux Kernel Version:"
uname -r
}
show_kernel_version

show_uptime () {
echo "System Uptime:"
uptime -p
}
show_uptime

disk_usage () {
echo "Disk Usage:"
usage=$(df -h / | awk 'NR==2 {print $5}')
if [ -z "$usage" ]
then 
echo "ERROR: Unable to retrieve disk usage"
return 1
fi
echo "Current Disk Usage: $usage"
usage=${usage%\%}
if [ "$usage" -le 90 ]
then
echo "Disk Usage Normal"
else 
echo "Warning: Disk uasge exceeds 90%"
fi
}
disk_usage

memory_usage (){
echo "Memory Usage:"
mem_total=$(cat /proc/meminfo | grep -E '^(MemTotal)' | awk '{print $2}')
mem_available=$(cat /proc/meminfo | grep -E '^(MemAvailable)' | awk '{print $2}')
if [[ -z "$mem_total" || -z "$mem_available" ]] || ! [[ "$mem_total" =~ ^[0-9]+$ ]] || ! [[ "$mem_available" =~ ^[0-9]+$ ]] || [[ "$mem_total" -eq 0 ]]
then
echo "ERROR: Unable to retrieve valid memory information"
return 1
fi
memory_usage=$(( (mem_total - mem_available) * 100 / mem_total  )) 
echo "Current Memory Usage: ${memory_usage}%"
if [ "$memory_usage" -le 85 ]
then
echo "Memory Usage Normal"
else
echo "Warning: Memory usage exceeds 85%"
fi
}
memory_usage
