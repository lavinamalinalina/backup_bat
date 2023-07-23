@echo off
chcp 65001
set "folderPath=F:\SNAPSHOT"
del "F:\bat scripts\*.log"
del /s /q "%folderPath%\*.*"
for /d %%F in ("%folderPath%\*") do rd /s /q "%%F"
robocopy "F:\progi" "F:\SNAPSHOT\%DATE%" /E /Z  /LOG:"лог_файл_%DATE%.log" 