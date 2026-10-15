#!/bin/bash

echo "All args passed to script: $@"
echo "Number of args passed to script: $#"
echo "First variable passed: $1"
echo "script name: $0"
echo "RealPath: $(realpath $0)"
