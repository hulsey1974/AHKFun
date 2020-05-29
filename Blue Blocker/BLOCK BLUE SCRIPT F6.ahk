
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F6::
	Send, ^k
	Sleep, 100
	Send, @BlueTW#7660
	Sleep, 500
	Send, {Enter}
	Send, You are now blocked hehe	
	Send, {Enter}
	Sleep, 1000
		CoordMode, Mouse, Screen
	Click, 400, 50
	Sleep, 1000
		CoordMode, Mouse, Screen
	Click, 1227, 370
	Sleep, 1000
		CoordMode, Mouse, Screen
	Click, 1200, 450
Return
