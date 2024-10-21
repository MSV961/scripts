#!/bin/bash
#
# How to use: sudo bash backup.sh
# Set your paths to variable for backup it, after add to cron

set -e

# Variables
directory_from=/root/backup/test
directory_to=/root/backup/test-$(date +'%d_%m_%y')
ip='some adress'

# Main
tar cfz ${directory_to}.tar.gz ${directory_from}
rsync -avzhHl ${directory_from}.tar.gz root@${ip}:/root/backup



