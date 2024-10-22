#!/bin/bash
#
# How to use: sudo bash upgrade_tool.sh [name of package]
# Set name of packge for see upgrade for it
#
set -e

# Variables
name_of_package=$1

if [[ $# -ne 1 ]]; then
  echo "How to use: sudo bash upgrade_tool.sh [name of package]"
  exit 1
fi

apt update 
apt-get --just-print upgrade | grep ${name_of_package}

read -p "Do you want to upgrade it? (y/n) " upgrade

if [[ ${upgrade} == "y" ]]; then
  apt-get install --only-upgrade ${name_od_package}
elif [[ ${upgrade} == "n" ]]; then
  echo "Goodbuy!"
else
  "Try again"
fi  

