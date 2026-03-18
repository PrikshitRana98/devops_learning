#!/bin/bash

read -p "Enter the file name to check: " file_name

if [ -f "$file_name" ]; then
    echo "File exists."
else
    echo "File does not exist."
fi