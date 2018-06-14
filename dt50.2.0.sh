#!/bin/bash
# Створення константи на флеш память.
FLASH="MyFiles"    #<---Назва флешки.
user=$(whoami)     #<---Команда дізнається імя поточного користувача
while true
do
if [ -d /media/$user/$FLASH ]
then
echo "...flash connected..."
	if [ -d /media/$user/$FLASH/Documents ]
	then
		echo -e '\E[1;32mВиконується копіювання'
		echo -e '\E[1;31m'
		cp -iv /media/$user/$FLASH/Documents/*.* /home/$user/Документи/USB/ 
		echo -e '\E[1;33m'
	
else
		echo "...create folder Documents..."
		mkdir /media/$user/$FLASH/Documents
		echo "... copy file PC --> flash..."
		cp -v /home/$user/Документи/USB/*.* /media/$user/$FLASH/Documents/
		echo "...created and copy complete..."
	fi 
else
echo "...FLASH NOT FOUND..."
fi
sleep 5
done
