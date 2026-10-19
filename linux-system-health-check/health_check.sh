#!/bin/bash
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





