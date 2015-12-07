@echo off

rem Increase free disk space!

set IDEA_DIR=%USERPROFILE%\.IdeaIC14
set GRADLE_DIR=%USERPROFILE%\.gradle

call :clear_cache "%IDEA_DIR%\system\index"
call :clear_cache "%IDEA_DIR%\system\caches"

call :clear_cache "%GRADLE_DIR%\caches"
call :clear_cache "%GRADLE_DIR%\wrapper"

call :clear_cache "%APPDATA%\npm-cache"

exit /b

:clear_cache
    if exist %1 ( 
        echo Removing %1
        rmdir /s /q %1 >nul
        mkdir %1
    )
    exit /b