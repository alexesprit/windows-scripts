@echo off

set VFLAGS=-cc msvc

set DEVELOPMENT=%USERPROFILE%\Development

set USERSCRIPTS=%USERPROFILE%\Documents\Scripts
set ALIASES_DIR=%USERSCRIPTS%\Aliases
set PYTHON_SCRIPTS=%DEVELOPMENT%\python-scripts

call :AddToPath %APPDATA%\npm\

call :AddToPath %PYTHON_SCRIPTS%
call :AddToPath %USERSCRIPTS%
call :AddToPath %ALIASES_DIR%

call :AddToPath %DEVELOPMENT%\v\
call :AddToPath %DEVELOPMENT%\vpkg\

call :AddToPath %PROGRAMFILES(x86)%\FontForgeBuilds\bin\

exit /b

:AddToPath
    set PATH=%PATH%;%1
    exit /b
