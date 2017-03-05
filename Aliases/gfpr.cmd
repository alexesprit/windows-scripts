@echo off

if "%2" == "" (
    set remote=upstream
    set pull=%1
) else (
    set remote=%1
    set pull=%2
)

git fetch %remote% pull/%pull%/head:%pull%