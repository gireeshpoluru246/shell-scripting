#!/bin/bash

# by deafult in shell script all data types treat as string
var1=10
var2=20
var3=giri

total=$(($var1+var2+var3))

echo "Total ${total}"

declare -i count=5 # it is the integer type / decalre as integer

count=count+1

echo "count is: $count"

fruits=("Apple" "Banana" "Papayya") # this called array

echo "All Fruits: ${fruits[@]}"
echo "First fruit: ${fruits[0]}"

name=girish
echo "${name} kumar"