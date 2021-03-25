#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^f:: ; Press Ctrl+f to fish farm.
Click Right, down
return

^x:: ; Press Ctrl+x to xp farm.
Loop, 150
{
	; Attack! every second
	Click
	Sleep, 1000
}
return

^/:: ; Press Ctrl+/ to ready show tracked statistic
Send, /
Sleep, 1000
Send, scoreboard objectives setdisplay sidebar ts_
return

^+/:: ; Press Ctrl+Shift+/ to clear statistics
Send, /
Sleep, 1000
Send, scoreboard objectives setdisplay sidebar
Send, {Enter}
return


^!Esc::ExitApp  ; Abort script with Ctrl+Alt+Esc
^!p::Pause    ; Pause script with Ctrl+Alt+P
^!s::Suspend  ; Suspend script with Ctrl+Alt+S
^!r::Reload   ; Reload script with Ctrl+Alt+R
