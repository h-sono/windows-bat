@echo off
rem chcp 65001
SET /P selected="再起動しますか(y/n)？"
if /i "%selected%"=="y" (goto :yes)
if /i "%selected%"=="yes" (goto :yes)
exit 0

:yes
shutdown -r -t 0

exit 0