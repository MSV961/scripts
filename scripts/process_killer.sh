#! /bin/bash
#
#
set -e

# Variables
process_name=$1
kill_signal=$2

# You should specify two value: name or id of process and type of signal (kill of forcekill)
# This check that you put two values
if [[ -z $2 ]]; then
  echo "Set your variable"
  exit
fi

# Visual
ps -afux | grep $process_name | grep -v "grep"

# Conditions
if [[ $kill_signal == 'kill' ]]; then
  kill $process_name 2> /dev/null || pkill $process_name
elif [[ $kill_signal == 'forcekill' ]]; then
  kill $process_name 2> /dev/null || pkill $process_name
  sleep 10
  if [[ $(ps -afux | grep $process_name | grep -v "grep") ]]; then
    kill -9 $process_name 2> /dev/null || pkill -9 $process_name
  fi
fi
                    
