#!/bin/bash

# Run the first argument and save its id in a file
sh $1 & echo $! > id.txt

# Wait a little bit just to test this algorithm
sleep 20

# Read id of program
line=$(head -n 1 id.txt)

# Finish the program with its id
kill $line
