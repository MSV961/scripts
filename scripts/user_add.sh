#!/bin/bash


# Variables
arg=3
first_name=$(echo $1 | cut -b1 | tr '[:upper:]' '[:lower:]')
second_name=$(echo $2 | tr '[:upper:]' '[:lower:]')
group=$3
login=$first_name$second_name

# check variables
if [[ $# -ne $arg ]]; then
  echo "text first name, second name and group"
  exit
fi

# Create user
useradd -m -s /bin/bash -G $group $login

# Visual
find_user_info=$(grep $login /etc/passwd)
echo "Login: $(echo $login)"
echo "Shell: $(echo $find_user_info | cut -d ":" -f7)"
echo "Home dir: $(find /home/ -type d -name $login)"
echo "Groups: $(id -nG $login)"
echo "UID: $(echo $find_user_info | cut -d ":" -f3)"
