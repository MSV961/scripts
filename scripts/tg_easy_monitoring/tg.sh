#!/bin/bash

CHAT_ID="" # id чата куда отправляем
TEXT="$1" # текст который отправляем
BOT_AUTH_TOKEN="" # Токен бота

# Передаем все данные в curl, которым сделаем запрос к API Telegram на отправку сообщения.
curl -sS -i --max-time 30 \
        --header 'Content-Type: application/json' \
        --request 'POST' \
        --data '{"chat_id": "'"${CHAT_ID}"'", "text": "'"${TEXT}"'"}' \
        "https://api.telegram.org/bot${BOT_AUTH_TOKEN}/sendMessage" 2>&1
