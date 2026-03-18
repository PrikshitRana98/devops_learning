#!/bin/bash

<< notice
This script demonstrates a simple for loop in bash. It will print "Welcome" followed by the current iteration number, from 1 to 5.
notice


for i in {1..5}
do
   echo "Welcome $i"
done


for car in "maruti" "honda" "tata"
do
   echo "I like $car"
done

# For loop using C-style syntax
for ((j=1; j<=5; j++))
do
    echo "C-style loop iteration $j"
done

# Print all files in the current directory
echo "All files:"
for file in *
do
    echo "$file"
done

# Print only .txt files in the current directory
echo "TXT files:"
for txtfile in *.txt
do
    if [[ -e "$txtfile" ]]; then
        echo "$txtfile"
    fi
done