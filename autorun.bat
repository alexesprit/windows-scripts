@echo off

set SOFTWARE=C:\Software
set DEVELOPMENT=C:\Development

set ANDROID_SDK=%DEVELOPMENT%\java\android-sdk
set USERSCRIPTS=%USERPROFILE%\Documents\Scripts
set ALIASES_FILE=%USERSCRIPTS%\aliases.ini

set COLOR_PROMPT=[32;1m$P$G[0m

call :add_to_path %ANDROID_SDK%\build-tools\19.0.1\
call :add_to_path %ANDROID_SDK%\platform-tools\
call :add_to_path %ANDROID_SDK%\tools\
call :add_to_path %USERSCRIPTS%

doskey /macrofile=%ALIASES_FILE%

if [%ConEmuHWND%] neq [] (
	prompt %COLOR_PROMPT%
)

exit /b


:add_to_path
    set PATH=%PATH%;%1
    exit /b