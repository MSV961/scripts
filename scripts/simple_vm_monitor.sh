#!/bin/bash

# How to use: sudo bash simple_vm_monitor.sh
# Script can check different basic characteristics of server

processor () {
  uptime | cut -d " " -f 12-16
  top | awk 'NR==3'
}

memory () {
  free -m
}

disk_usage () {
  df -h
}

echo "1) processor"
echo "2) memory"
echo "3) disk_usage"
read -p "Choose something upper: " choice

case $choice in 
	1) processor ;;
	2) memory ;;
	3) disk_usage ;;
	*) echo "try variants upper" ;;
esac


