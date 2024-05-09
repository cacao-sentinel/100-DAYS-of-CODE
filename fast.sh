#!/bin/bash

# Virtual Environment Name
ENV_NAME="venv"

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
echo "Creating virtual environment..."
python3 -m venv $ENV_NAME

# Activate environment
echo "Activating environment..."
source $ENV_NAME/bin/activate

# Install libraries
pip install python-nmap &> /dev/null

# Run Python script
python ./script.py

# Deactivate environment
deactivate

# Delete environment
echo "Task completed, environment deleted"
rm -rf $ENV_NAME