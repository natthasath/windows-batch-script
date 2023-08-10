@echo off

set path=D:

mklink /d "%path%\00 Shortcut\hosts" "%windir%\System32\drivers\etc"
mklink /d "%path%\00 Shortcut\fonts" "%windir%\Fonts"
mklink /d "%path%\00 Shortcut\ssh" "%userprofile%\.ssh"
mklink /d "%path%\00 Shortcut\winget" "%userprofile%\AppData\Local\Microsoft\WinGet\Packages"