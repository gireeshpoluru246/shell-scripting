#!/bin/bash

echo "All args passed to script: $@"
echo "Number of args passed to script: $#"
echo "First variable passed: $1"
echo "script name: $0"
echo "RealPath: $(realpath $0)"
echo "who is running current script: $USER"
echo "Directory of current script: $PWD"
echo "Home directory of current script: $HOME"
echo "Process id of current script: $$"
sleep 10 & # here & indicate process run in background
echo "PID of the command running in background now: $!"
wait $! # script will wait until $! command complete
echo "Line number: $LINENO"
echo "previous command exit staus: $?"
echo "Total time executed for this script: $SECONDS"
