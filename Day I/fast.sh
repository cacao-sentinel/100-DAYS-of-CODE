#!/bin/bash

# Install or update nmap
if ! command -v nmap &> /dev/null; then
    echo "Nmap not found. Proceeding with installation..."
    sudo apt-get install -y nmap &> /dev/null
else
    echo "Checking nmap version..."
    sudo apt-get update &> /dev/null
    sudo apt-get install --only-upgrade nmap &> /dev/null
fi

# Create environment
source ../manage_env.sh go

# Install libraries
pip install python-nmap &> /dev/null

# Run Python script
python ./script.py

# Clean env
source ../manage_env.sh