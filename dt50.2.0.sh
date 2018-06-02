#!/bin/bash
# Створення константи на флеш память.
FLASH="MyFiles"    #<---Назва флешки.
user=$(whoami)     #<---Команда дізнається імя поточного користувача
if [ -d /media/$user/$FLASH/Documents ]
then
echo "Копіювання файлів з флешки на ПК"
cp -v /media/$user/$FLASH/Documents/*.* /home/$user/Документи/USB/
echo "Копіювання завершено"
else
echo "Флешку не підключено"
fi
