#!/bin/bash

# Virtual Environment Name
ENV_NAME="venv"

if ["$1"== "go"];then
    # Create environment
    echo "Creating and activating virtual environment..."
    python3 -m venv $ENV_NAME
    source $ENV_NAME/bin/activate

else
    # Deactivate and delete environment
    deactivate
    echo "Task completed, enviorement deleted."
    rm -rf $ENV_NAME
fi