#!/bin/bash

# FILE="$1"

# if [ -e "$FILE" ]; then
#     echo "File '$FILE' exists."
# else
#     echo "File '$FILE' does not exist."
# fi

# if [ -f "$FILE" ]; then
#     echo "File '$FILE' is a regular file."
# else
#     echo "File '$FILE' is not a regular file."
# fi


if [ $# -eq 0 ]; then
    echo "No file provided. Please provide a file as an argument."
    exit 1 

# exit 0 → ✅ Success

# exit 1 → ❌ General error

# exit >1 → ❌ Specific types of errors

fi

if [ -f "$1" ]; then
    echo "File '$1' exists and is a regular file."
else
    echo "File '$1' does not exist or is not a regular file."
fi