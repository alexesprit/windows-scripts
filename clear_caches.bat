@echo off

rem Increase free disk space!

set IDEA_DIR=%USERPROFILE%\.IdeaIC15
set GRADLE_DIR=%USERPROFILE%\.gradle

set LOCAL_DATA=%USERPROFILE%\AppData\Local

call :ClearCache "%IDEA_DIR%\system\index"
call :ClearCache "%IDEA_DIR%\system\caches"

call :ClearCache "%GRADLE_DIR%\caches"
call :ClearCache "%GRADLE_DIR%\wrapper"

call :ClearCache "%APPDATA%\npm-cache"

call :ClearCache "%LOCAL_DATA%\Steam\htmlcache"

call :ClearCache "%APPDATA%\Opera Software\Opera Stable\Application Cache"
call :ClearCache "%APPDATA%\Opera Software\Opera Stable\GPUCache"
call :ClearCache "%APPDATA%\Opera Software\Opera Stable\ShaderCache"
call :ClearCache "%LOCAL_DATA%\Opera Software\Opera Stable"

call :ClearCache "%LOCAL_DATA%\Temp"

exit /b

:ClearCache
    if exist %1 ( 
        echo Removing %1
        rmdir /s /q %1 >nul
        mkdir %1
    )
    exit /b