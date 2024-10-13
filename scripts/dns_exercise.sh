#!/bin/bash

set -e

# Как использовать: sudo bash dns_exercise.sh [доменное имя] [тип ресурсной записи dns]

# Проверка наличия передачи переменных
if [ -z "$2" ]; then
    echo "Как использовать: sudo bash dns_exercise.sh [доменное имя] [тип ресурсной записи dns]"
    exit 1
fi

# Переменные
dns_name=$1
resource_records=$2

# Общий вывод
dig @8.8.8.8 $dns_name $resource_records

# Проверка TTL
find_ttl=$(dig @8.8.8.8 $dns_name $resource_records | awk 'NR==15' | awk '{print $2}')

if [[ $(echo $find_ttl) < 3600 ]]; then
  echo "WOW short TTL"
fi  
