#!/bin/bash

echo "Installing package: $1"

sudo apt-get update
sudo apt-get install -y "$1" 