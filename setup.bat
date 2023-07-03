@echo off

rem Check if the environment file exists
if not exist venv (

    rem Create the environment
    python -m venv venv

)

rem Check if the .env file exists
if not exist .env (

    echo "No .env file found."
    exit /b

)

rem Activate the environment
call venv\Scripts\activate

rem Check if the requirements are installed
if not exist requirements.txt (

    echo "No requirements file found."
    exit /b

)

rem Install the requirements
pip install -r requirements.txt

