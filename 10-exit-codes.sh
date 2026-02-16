#! /bin/bash

#root user id is 0
#other user id is 1-65535


USER_ID=$(id -u)

if [ $USER_ID -NE 0]; then
echo "Please run this script with root user access"
exit 1
file

echo "Installing Nginx"

dbf install ngnix -y

if [ $? -ne 0 ];  then 
echo "Installing Nginx.. Falure"
exit 1
else
echo "Insatlling Nginx.. Success"
fi