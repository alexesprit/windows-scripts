@echo off

set SOFTWARE=C:\Software
set DEVELOPMENT=%USERPROFILE%\Development
set PYTHON_HOME=C:\Python27
set GRADLE_HOME=%SOFTWARE%\gradle
set ANDROID_HOME=%SOFTWARE%\android-sdk
set PROGUARD_HOME=%ANDROID_HOME%\tools\proguard

set USERSCRIPTS=%USERPROFILE%\Documents\Scripts
set ALIASES_DIR=%USERSCRIPTS%\Aliases
set PYTHON_SCRIPTS=%DEVELOPMENT%\Python\scripts

call :AddToPath %ANDROID_HOME%\build-tools\23.0.2
call :AddToPath %ANDROID_HOME%\platform-tools
call :AddToPath %ANDROID_HOME%\tools

call :AddToPath %GRADLE_HOME%\bin
call :AddToPath %APPDATA%\npm\

call :AddToPath %PYTHON_SCRIPTS%
call :AddToPath %USERSCRIPTS%
call :AddToPath %ALIASES_DIR%

exit /b

:AddToPath
    set PATH=%PATH%;%1
    exit /b
