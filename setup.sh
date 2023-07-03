#!/bin/sh

# Check if the environment file exists
if [ ! -f venv ]; then

    # Create the environment
    python3 -m venv venv

fi

if [! -f .env]; then

    echo "no .env file"
    exit1
f1

# Activate the environment
source venv/bin/activate

# Check if the requirements are installed
if [ ! -f requirements.txt ]; then

    echo "No requirements file found."
    exit 1

fi

# Install the requirements
pip install -r requirements.txt