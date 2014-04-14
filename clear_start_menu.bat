@echo off

set PATH1="%PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs"
set PATH2="%APPDATA%\Microsoft\Windows\Start Menu\Programs\"

call :clear %PATH1%
call :clear %PATH2%
exit /b

:clear
    set CurrentPath=%CD%
    cd %1
    del /s /q /f "*Uninstall*"
    del /s /q /f "*Homepage*"
    del /s /q /f "*Website*"
    del /s /q /f "*Visit*"
    del /s /q /f "*About*"
    del /s /q /f "*Help*"
    cd %CurrentPath%
    exit /b