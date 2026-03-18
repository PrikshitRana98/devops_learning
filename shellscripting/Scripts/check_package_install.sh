#!/bin/bash

# Check if the package name is provided as an argument

read -p "Enter the package name to check: " package_name

if dpkg -s "$package_name" >/dev/null 2>&1   ; then    
    echo "Package '$package_name' is installed already."
    exit    
else
    echo "Package '$package_name' is not installed."
    read -p "Do you want to install it? (y/n): " install_choice
    if [ "$install_choice" == "y" ]; then
        sudo apt-get install "$package_name"
    fi
fi

