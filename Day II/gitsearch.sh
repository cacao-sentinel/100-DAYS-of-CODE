#!/bin/bash

# Create environment
source ../manage_env.sh go

# Install libraries
pip install requests &> /dev/null

# Run Python script
python ./script.py

# Clean env
source ../manage_env.sh