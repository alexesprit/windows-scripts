@echo off

rem Increase free disk space!

set IDEA_DIR=%USERPROFILE%\.IdeaIC14
set GRADLE_DIR=%USERPROFILE%\.gradle

call :ClearCache "%IDEA_DIR%\system\index"
call :ClearCache "%IDEA_DIR%\system\caches"

call :ClearCache "%GRADLE_DIR%\caches"
call :ClearCache "%GRADLE_DIR%\wrapper"

call :ClearCache "%APPDATA%\npm-cache"

call :ClearCache "%APPDATA%\Opera Software\Opera Stable\Application Cache"
call :ClearCache "%APPDATA%\Opera Software\Opera Stable\GPUCache"
call :ClearCache "%APPDATA%\Opera Software\Opera Stable\ShaderCache"
call :ClearCache "%USERPROFILE%\AppData\Local\Opera Software\Opera Stable"

exit /b

:ClearCache
    if exist %1 ( 
        echo Removing %1
        rmdir /s /q %1 >nul
        mkdir %1
    )
    exit /b