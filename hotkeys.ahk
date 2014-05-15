^Tab::Run C:\Program Files\ConEmu\ConEmu.exe /Single /dir "C:\"
^Esc::WinMinimizeAll
; Win+S
#vk53::Run %WINDIR%\System32\SnippingTool.exe
; Win+Z
#vk5A::Run %PROGRAMFILES%\SpeedCrunch\speedcrunch.exe

Media_Play_Pause::
Process, Exist, aimp3.exe
if !ErrorLevel = 0 {
    Send, {Media_Play_Pause}
} else {
    Run, %PROGRAMFILES%\AIMP3\AIMP3.exe
}
return
