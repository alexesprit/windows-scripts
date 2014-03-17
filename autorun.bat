@echo off

set SOFTWARE=C:\Software
set DEVELOPMENT=C:\Development

set ANDROID_HOME=%DEVELOPMENT%\java\android-sdk
set GRADLE_HOME=%DEVELOPMENT%\Java\gradle-1.10\
set USERSCRIPTS=%USERPROFILE%\Documents\Scripts
set ALIASES_FILE=%USERSCRIPTS%\aliases.ini

set COLOR_PROMPT=[32;1m$P$G[0m

call :add_to_path %ANDROID_HOME%\build-tools\19.0.3\
call :add_to_path %ANDROID_HOME%\platform-tools\
call :add_to_path %ANDROID_HOME%\tools\
call :add_to_path %USERSCRIPTS%
call :add_to_path %GRADLE_HOME%\bin\

doskey /macrofile=%ALIASES_FILE%

if [%ConEmuHWND%] neq [] (
	prompt %COLOR_PROMPT%
)

exit /b


:add_to_path
    set PATH=%PATH%;%1
    exit /b