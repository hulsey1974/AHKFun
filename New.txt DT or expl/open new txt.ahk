#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; CONTROL SHIFT M TO CREATE A NEW TEXT FILE WHEN EITHER ON DESKTOP OR FILE EXPLORER

^+M::
if WinActive("ahk_class CabinetWClass")
{
	Send, +{F10}
	Sleep, 200
	Send, {Up 2}
	Send, {Enter}
	Send, {Up 2}
	Send, {Enter}
}	
if WinActive("ahk_class WorkerW")
{	
	Send, +{F10}
	Sleep, 200
	Send, {Up 3}
	Send, {Enter}
	Send, {Up 2}
	Send, {Enter}	
}
else
return
