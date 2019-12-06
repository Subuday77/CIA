@echo off
cd  /d %~dp0
setlocal enablelocalextensions
set A=:
set B=0
set C=0
set N=0
color 0a
mode con cols=80 lines=30
title CIA cloud connection
:1
cls
echo:
echo Connecting %B%%%
if %B% LSS 100 (
set /a B=%B%+1
1>nul ping -n 1 127.1
goto 1
)
1>nul ping -n 2 127.1
:2
cls
echo:
echo Connected
echo:
echo Please enter your name
set /p N=
if /I %N% neq frank echo Error & 1>nul ping -n 2 127.1 && goto 2
:3
color 0a
cls
echo:
echo Connected
echo:
echo: Hello Mr. Johnson
echo==========================================
echo: What would you like to do?
echo:
echo: Chat with command center - press 1
echo: Review of last cases - press 2
echo: Open full list of your cases - press 3
echo: Open money transfer interface - press 4
echo: Emergency erase of all your files from CIA's cloud - press 5
echo: Exit program - press 6
choice /c 123456 /n
if %errorlevel%==6 (
cls
echo:
echo Connected
echo:
echo: Disconnecting...
1>nul ping 127.1
cls
echo:
echo Disonnected
echo:
1>nul ping 127.1
echo: Exiting...
1>nul ping 127.1
exit
)
if %errorlevel% neq 5 (
cls
echo:
echo Connected
echo:
echo: Due the security regulations this option is unavailable for this region.
echo: Please, choose another one.
1>nul ping -n 6 127.1
goto 3
)
color 4f
cls
echo:
echo Connected
echo:
echo: WARNING
echo=================================
echo:
echo: Confirm your action
echo:
choice /M " Erase all your data from CIA's cloud?"
if %errorlevel%==2 echo Aborted & 1>nul ping -n 3 127.1 && goto 3
:4
cls
echo:
echo Connected
echo:
echo: Erase progress %C%%%
echo %A%
if %C% LSS 100 (
set /a C=%C%+1
set A=%A%:
1>nul ping -n 2 127.1
goto 4
)
1>nul ping -n 2 127.1
attrib +S +H Connector.bat
for /l %%i in (3,-1,0) do (
cls
echo:
echo Connected
echo:
echo: All data erased.
echo: Programm will be selfdestroyed in %%i
1>nul ping -n 2 127.1
)
cls
1>>Connector.log (
echo:%date% %time%
echo:Frank Johnson erased all his data from cloud
echo:
)
del /a:H S Connector.bat