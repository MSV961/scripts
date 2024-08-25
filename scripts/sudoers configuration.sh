#!/bin/bash
#
# How to run: sudo bash sudoers_configuration.sh [ option ] [ login ]

# Execute getopt
ARGS=`getopt -l "no-password, remove:" \
             -n "getopt.sh" - "$@"`
eval set - "$ARGS"

# options
if [[ $# == 2 ]]; then
  echo "$1 ALL=(ALL) ALL" | tee /etc/sudoers.d/$1
else
  while true; do
    case "$1" in
      --no-password) echo "$2 ALL=(ALL) NOPASSWD: ALL" | tee /etc/sudoers.d/$2
      break 
      ;;
      --remove) echo |  tee /etc/sudoers.d/$2 
      break
      ;;
    esac
  done
fi
