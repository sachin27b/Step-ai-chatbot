@echo off
echo Python versions installed:
cmd /c pyenv versions
REM Prompt the user to enter the desired Python version
set /p version="Enter the desired Python version: "

REM Create the virtual environment with the selected version
cmd /c pyenv local %version% 
cmd /c python -m venv .venv
cmd /c .venv\Scripts\activate
cmd /c python -m pip install --upgrade pip
cmd /c pip install -r requirements.txt
echo Virtual environment created with Python %version%.
echo.
echo Press Enter to exit...
set /p "=">nul