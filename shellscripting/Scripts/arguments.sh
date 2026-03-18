#!/bin/bash

# Print each argument one by one
for arg in "$@"; do
    echo "$arg"
done

# Print total number of arguments
echo "Total arguments: $#"

echo "All arguments as a single string: $*"

echo "All arguments as an array: ${@}"

echo "Zero argument: $0"

echo "First argument: $1"
echo "Second argument: $2"
echo "Third argument: $3"

# Usage:
# This script is useful for processing command-line arguments in shell scripts,
# such as parsing input files, options, or parameters passed to the script.


# Example: Add multiple users passed as arguments
for user in "$@"; do
    echo "Adding user: $user"
    sudo useradd "$user"
done

# Command to add multiple users:
# ./arguments.sh user1 user2 user3


