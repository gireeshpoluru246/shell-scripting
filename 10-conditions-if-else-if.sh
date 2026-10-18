#!/bin/bash

echo "Please enter the Marks:"
read marks

if [[ $marks -lt 33 ]]; then
       echo "Student is failed: ${marks}" 
elif [[ $marks -ge 33 && $marks -lt 50 ]]; then
       echo "Student is third class : ${marks}"
elif [[ $marks -ge 50 && $marks -lt 60 ]]; then
       echo "Student is second class : ${marks}"
elif [[ $marks -ge 60 && $marks -lt 75 ]]; then
        echo "Student is first class : ${marks}"
elif [[ $marks -ge 75 ]]; then
        echo "Student is distinction : ${marks}"
fi