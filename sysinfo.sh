#!/bin/sh

echo "System Information"
echo "------------------"
echo "Current user : $(whoami)"
echo "Operating System : $(uname -s)"
echo "Machine name : $(hostname)"
echo "CPU : $(lscpu | grep -i "cpu")" 
echo "Ram Size: $(free -h | grep "Mem")"
echo "Ram Mem : $(free -h | awk '/^Mem:/ {print $2}')"
echo "Ram Used Mem : $(free -h | awk '/^Mem:/ {print $3}')"


