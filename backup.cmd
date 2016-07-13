@echo off

set BACKUP_DIR=%USERPROFILE%\Desktop\Backup

call :BackupDir "%USERPROFILE%\.atom"
call :BackupDir "%USERPROFILE%\.IdeaIC16\config"

call :BackupDir "%USERPROFILE%\.gnupg"
call :BackupDir "%USERPROFILE%\.ssh"

call :BackupFile "%APPDATA%\ConEmu.xml"
call :BackupFile "%APPDATA%\Imagine\Imagine.ini"

call :BackupDir "%APPDATA%\AIMP"
call :BackupDir "%APPDATA%\GHISLER"
call :BackupDir "%APPDATA%\MPC-HC"
call :BackupDir "%APPDATA%\Notepad++"
call :BackupDir "%APPDATA%\Opera Software"
call :BackupDir "%APPDATA%\Rainmeter"
call :BackupDir "%APPDATA%\SpeedCrunch"
call :BackupDir "%APPDATA%\uTorrent"

exit /b

:BackupDir
    set source=%1
    set target=%BACKUP_DIR%%~p1%~nx1

    if not exist %target% (
        mkdir %target%
    )

    copy %source% %target%
    exit /b

:BackupFile
    set source=%1
    set target=%BACKUP_DIR%%~p1

    if not exist %target% (
        mkdir %target%
    )

    copy %source% %target%
    echo copy %source% %target%
    exit /b
