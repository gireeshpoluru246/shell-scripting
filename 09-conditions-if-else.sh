#!/bin/bash

echo "Please enter any number:"
read number

if [ $(($number % 2)) -eq 0 ]; then
     echo "number is even: ${number}"
 else
    echo "number is not even: ${number}"
fi
