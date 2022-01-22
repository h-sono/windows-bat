@echo off
chcp 65001
SET /P selected="再起動しますか(y/n)？"
if /i "%selected%"=="y" (goto :yes)
if /i "%selected%"=="yes" (goto :yes)
rem exit 0

:yes
shutdown -r -t 0

rem exit 0