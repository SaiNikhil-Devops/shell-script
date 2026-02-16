# #!/bin/bash

# set -e #ERR

# trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR

# echo "Hello World"
# echo "I am learning Shell"
# echoo "printing error here"
# echo "No error in this"



set -e #ERR
trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER



for package in $@ # sudo sh 14-loops.sh nginx mysql nodejs
do
    dnf list installed $package &>>$LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package is not installed. Installing now..." | tee -a $LOGS_FILE
        dnf install $package -y &>>$LOGS_FILE
        
    else
        echo "$package is already installed. Skipping installation..." | tee -a $LOGS_FILE
    fi
    
done