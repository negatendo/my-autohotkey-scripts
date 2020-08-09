#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^j::  ; Press Ctrl+j to run the script.

; Configure these before run to quickly mend each of your tools/weapons in your offhand
GrindingWeaponHotkey := 1
FoodHotkey := 9
NumOffhands := 7  ; Number of weapons to put in offhand to utilize mending on. Can be up to 7 (because of weapon and food slots)
ExtraXpGrindCycles :=  3  ; Number of cycles to do extra xp grinds on after all offhands are done
; Wont have to touch probably
NumAttacks := 10

; Main loop


; Switch to weapon
Send 1
Sleep, 500
; Select next offhand slot
Send 2
Sleep, 500
; Swap
Send f
Sleep, 500
; Back to weapon slot
Send 1
Sleep, 500
; Do DoAttacks
Loop, 10
{
	; Attack! every second
	Click
	Sleep, 1000
}
; Back to next offhand slot
Send 2
Sleep, 500
; Put it back
Send f
Sleep, 500
; Monch after attack Loop
Send %FoodHotkey%
Sleep, 500
Click, right, down
Sleep, 3000
Click, right, up
