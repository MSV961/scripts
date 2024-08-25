#!/bin/bash

CHAT_ID="735870138" # id чата куда отправляем
TEXT="$1" # текст который отправляем
BOT_AUTH_TOKEN="7222015453:AAHxZx1zZpHaVkuXMAZJPrVHGDpndCrQbBw" # Токен бота

# Передаем все данные в curl, которым сделаем запрос к API Telegram на отправку сообщения.
curl -sS -i --max-time 30 \
        --header 'Content-Type: application/json' \
        --request 'POST' \
        --data '{"chat_id": "'"${CHAT_ID}"'", "text": "'"${TEXT}"'"}' \
        "https://api.telegram.org/bot${BOT_AUTH_TOKEN}/sendMessage" 2>&1
