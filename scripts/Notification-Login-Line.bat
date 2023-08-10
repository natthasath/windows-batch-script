@echo off

for /f "skip=1 tokens=5*" %%a in ('quser') do (set logon=%%b)

set uri=https://notify-api.line.me/api/notify
set token=Your_Token
set alert=%username%  %logon%  %computername%

curl -X POST -H "Authorization: Bearer %token%" -F "message=%alert%" %uri%