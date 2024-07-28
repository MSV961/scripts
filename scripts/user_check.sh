#!/bin/bash
#
# Perform to check active users

set -e

echo "Specify your request: "
echo "1) logged_users"
echo "2) auth_history"
read -p " " request

if [[ $request == "logged_users" ]]; then
  echo "Logged users: "
  echo "--------------" 
  who
  echo "Logged users count: $(who | wc -l)"
elif [[ $request ==  "auth_history" ]]; then
  echo "Authorization history: "
  echo "-----------------------"
  count_strings=$2
    if [[ -z "$count_strings" ]]; then
      last
    else
      last | head -n$count_strings
    fi
fi
