#!/bin/bash

START_TIME=$(date +%s)
echo "Program start execution at: $START_TIME"

sleep 10

END_TIME=$(date +%s)
echo "Program complete execution at: $END_TIME"

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Total time taken to completion: $TOTAL_TIME seconds"