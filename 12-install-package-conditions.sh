#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Please run the command sudo access.."
    exit 1
fi

dnf install nginxxx -y

if [ $? -ne 0 ]; then
    echo "Nginx installation failed.."
    exit 1
else
    echo "Ngnix installed successful"
fi

dnf install mysqlll -y 

if [ $? -ne 0]
    echo "Mysql client installation failed."
else
    echo "Mysql client installation success.."
fi


echo "script ended.."

