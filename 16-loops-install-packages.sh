#!/bin/bash

user_id=$(id -u)
logs_folder="/var/logs/shell-practice"
log_file="${logs_folder}/${0}.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ $user_id -ne 0 ]; then
    echo "Please run the command sudo access.."
    exit 1
fi

mkdir -p $logs_folder

echo "Script starting execution at $(date "+%F +%T" )" &>> ${log_file}

validate()
{
if [ $1 -ne 0 ]; then
    echo -e "${2} ${R}FAILED${N}" | tee -a "$log_file"
    exit 1
else
    echo -e "${2} ${G}SUCCESS${N}" | tee -a "$log_file"
fi
}


for package in $@
do
  dnf list installed ${package} &>> ${log_file}
if [ $? -ne 0 ]; then
  echo "Going to install : $package"
  dnf install ${package} -y &>> ${log_file}
  validate $? "${package} Installation"
 else
    echo -e "${package} already installed ${Y}SKIPPED${N}" | tee -a "$log_file"
fi
done

echo "Script completion execution at $(date "+%F +%T" )" &>> ${log_file}
