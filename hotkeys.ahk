^Tab::Run %PROGRAMFILES%\ConEmu\ConEmu64.exe /Single
^+Tab::Run %PROGRAMFILES%\ConEmu\ConEmu64.exe /Single /cmd {Shell::Command Prompt (Admin)}

^Esc::WinMinimizeAll
; Win+S
#vk53::Run %WINDIR%\System32\SnippingTool.exe
; Win+Z
#vk5A::Run %PROGRAMFILES%\SpeedCrunch\speedcrunch.exe

#F9::Send {Media_Play_Pause}
#F10::Send {Media_Stop}
#F11::Send {Media_Prev}
#F12::Send {Media_Next}
