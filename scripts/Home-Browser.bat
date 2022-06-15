@echo off

reg add "HKCU\SOFTWARE\MICROSOFT\INTERNET EXPLORER\MAIN" /V "START PAGE" /D "http://www.google.com/" /F
reg add "HKCU\SOFTWARE\MICROSOFT\GOOGLE CHROME\MAIN" /V "START PAGE" /D "http://www.google.com/" /F
reg add "HKCU\SOFTWARE\MICROSOFT\MOZILLA FIREFOX\MAIN" /V "START PAGE" /D "http://www.google.com/" /F