@echo off

set SOFTWARE=C:\Software
set DEVELOPMENT=C:\Development
set PYTHON_HOME=C:\Python2.7
set GRADLE_HOME=%SOFTWARE%\gradle
set ANDROID_HOME=%SOFTWARE%\android-sdk
set PROGUARD_HOME=%ANDROID_HOME%\tools\proguard

set USERSCRIPTS=%USERPROFILE%\Documents\Scripts
set ALIASES_FILE=%USERSCRIPTS%\aliases.ini

call :add_to_path %ANDROID_HOME%\build-tools\19.0.3
call :add_to_path %ANDROID_HOME%\platform-tools
call :add_to_path %ANDROID_HOME%\tools
call :add_to_path %USERSCRIPTS%
call :add_to_path %GRADLE_HOME%\bin

doskey /macrofile=%ALIASES_FILE%

if [%ConEmuHWND%] neq [] (
	prompt $E[32;1m$P$G$E[0m
)
exit /b


:add_to_path
    set PATH=%PATH%;%1
    exit /b
