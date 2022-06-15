@echo off

reg delete "HKCU\Software\Microsoft\Windows\Shell\BagMRU" /F
reg delete "HKCU\Software\Microsoft\Windows\Shell\Bags" /F
reg delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\Bags" /F
reg delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\BagMRU" /F
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /F
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /F
reg delete "HKCU\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\Bags" /F
reg delete "HKCU\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /F

taskkill /f /im explorer.exe
start explorer.exe