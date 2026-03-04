#!/bin/bash

# this is use to install the package or service like docker.io service and  docker is package

read -p "Enter the package name to install: " package_name



if [dpkg -s "$package_name" >/dev/null 2>&1 ]  ; then    
    echo "Package '$package_name' is installed already."
    exit    
else
    echo "Package '$package_name' is not installed."
    read -p "Do you want to install it? (y/n): " install_choice
    if [ "$install_choice" == "y" ]; then
        echo "Installing package '$package_name'..."
        sudo apt-get update
        sudo apt-get install "$package_name"
        systemctl install "$package_name"
        systemctl start "$package_name"
        systemctl enable "$package_name"    
    fi
fi