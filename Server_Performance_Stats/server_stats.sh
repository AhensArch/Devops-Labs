#!/bin/bash

#Date
echo "Current date and time is : $(date)"
#Total CPU Usage is
echo "Total CPU Usage is : $(top -bn1 | grep "Cpu(s)")"
#Total memory usage (Free vs Used including percentage)
echo "Total Memory Usage is : $(free | grep Mem | awk '{print "Free: " $4/$2 * 100 "%\n", "Used: " $3/$2 * 100 "%"}')"
#Total disk usage (Free vs Used including percentage)
echo "Total Disk Usage is : $(df -h --total | grep total | awk '{print "Used: " $3 " | Free: " $4 }')"
#Top 5 processes by CPU usage
echo "Top 5 processes by CPU usage are : $(ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6 )"
#Top 5 processes by memory usage
echo "Top 5 processes by memory usage are : $(ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6 )"
#uptime is
echo "Uptime is : $(uptime -p)"
#OS version
echo "OS version is : $(lsb_release -d | awk -F"\t" '{print $2}')"
#login users
echo "Logged in users are : $(who)"
