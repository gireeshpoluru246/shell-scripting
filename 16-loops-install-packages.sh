#!/bin/bash

user_id=$(id -u)
logs_folder="/var/logs/shell-practice"
log_file="${logs_folder}/${0}.log"

if [ $user_id -ne 0 ]; then
    echo "Please run the command sudo access.."
    exit 1
fi

mkdir -p $logs_folder

echo "Script starting execution at $(date "+%F +%T" )" &>> ${log_file}

validate()
{
if [ $? -ne $1 ]; then
    echo "${2} FAILED" | tee -a ${log_file}
    exit 1
else
    echo "${2} SUCCESS" | tee -a ${log_file}
fi
}


for package in $@
do
  echo "Going to install : $package"
  dnf install ${package} -y &>> ${log_file}
  validate $? ${package} "Installation"
done

echo "Script completion execution at $(date "+%F +%T" )" &>> ${log_file}
