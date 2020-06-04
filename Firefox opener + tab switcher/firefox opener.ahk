#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F2::
IfwinNotExist, ahk_class MozillaWindowClass
	Run, firefox.exe
if WinActive("ahk_class MozillaWindowClass")
	Send ^{tab}
else
	WinActivate ahk_class MozillaWindowClass
Return