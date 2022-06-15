@echo off

set path=%windir%\System32\drivers\etc\hosts

echo 192.168.1.1 wp.lab.local >> %path%
echo 192.168.1.2 jl.lab.local >> %path%
echo 192.168.1.3 dp.lab.local >> %path%