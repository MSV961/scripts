## creating_users_from_file
Скрипт создаёт учётки пользователям, приветственное сообщение в домашней директории, на основе файла. Проставляет пользователям пароли из файла.

## easymonitoring_nginx.sh
Скрипт проверяет функционирование сервиса nginx (можно переделать на другие), если сервис не в активном статусе, скрипт выполняет перезагрузку сервиса, сохраняет логи

## new_bash_scripts.sh
Скрипт для создания других скриптов:) указываем название файла и с разу начинаем писать код

## process_killer.sh
Остановить процесс. Указываем первым аргументом имя или pid, вторым указываем kill = sigterm или forcekill = sigkill

## user_check.sh
Проверка юзеров, кто залогинен сейчас, или истории входа

## tg_easy_monitoring
Проверка сервиса, с отправкой сообщения в ТГ о статусе

## user_add.sh
Вводим имя пользователя, фамилию, группу. Скрипт создаёт юзера с первой буквой имени и фамилией, добавляет в группу, выводит результат на экран

## sudoers configuration.sh
Скрипт выдаёт права судо пользователю, можно использовать опции, что бы задать возможность использования судо без пароля, либо удалить предоставленные ранее привелегии

## OOM_killer_test.sh
Протестировать OOM_killer, сообщение о сработке OOM killer будет видно командой dmesg

## dns_exercise.sh
По сути просто учебный скипт, смотрит DNS по домену и записи

## install_nginx_mainline.sh
Установка mainline версии nginx из офф репозитория
