@echo off

set SOFTWARE=C:\Software
set DEVELOPMENT=%USERPROFILE%\Development
set PYTHON_HOME=C:\Python35
set ANDROID_HOME=%USERPROFILE%\AppData\Local\Android\Sdk
set PROGUARD_HOME=%ANDROID_HOME%\tools\proguard

set USERSCRIPTS=%USERPROFILE%\Documents\Scripts
set ALIASES_DIR=%USERSCRIPTS%\Aliases
set PYTHON_SCRIPTS=%DEVELOPMENT%\Python\scripts

call :AddToPath %ANDROID_HOME%\build-tools\23.0.2
call :AddToPath %ANDROID_HOME%\platform-tools
call :AddToPath %ANDROID_HOME%\tools

call :AddToPath %APPDATA%\npm\

call :AddToPath %PYTHON_SCRIPTS%
call :AddToPath %USERSCRIPTS%
call :AddToPath %ALIASES_DIR%

call :AddToPath %APPDATA%\npm\node_modules\selenium-chromedriver\bin\

exit /b

:AddToPath
    set PATH=%PATH%;%1
    exit /b
