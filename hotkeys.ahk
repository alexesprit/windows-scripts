#NoTrayIcon
#SingleInstance force

SPEEDCRUNCH_EXE_PATH = "C:\Program Files (x86)\SpeedCrunch\speedcrunch.exe"
CONEMU_EXE_PATH = %PROGRAMFILES%\ConEmu\ConEmu64.exe
BROWSER_EXE_PATH = "C:\Program Files (x86)\Microsoft\Edge Dev\Application\msedge.exe"
GMAIL_URL = https://mail.google.com/mail/u/0/

^Esc::WinMinimizeAll

^Tab::Run %CONEMU_EXE_PATH% /Single
^+Tab::Run %CONEMU_EXE_PATH% /Single /cmd {Shell::Command Prompt (Admin)}

#vk5a::
IfWinExist SpeedCrunch
{
    WinActivate
    return
}
else
{
    Run %SPEEDCRUNCH_EXE_PATH%
    WinWait SpeedCrunch
    WinActivate
    return
}

RWin::Send {LWin down}{Tab}{LWin up}

Launch_Mail::Run %OPERA_EXE_PATH% %GMAIL_URL%

!F1::Run %WINDIR%\System32\DisplaySwitch.exe /internal
!F2::Run %WINDIR%\System32\DisplaySwitch.exe /external
!F3::Run %WINDIR%\System32\DisplaySwitch.exe /extend
