#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;this is where all the keybinds are for all the other things i have made so that they are all stored in one central file 


SetTimer, Closeadobe, 100
return
SetTimer, Closefortnite, 100
return
SetTimer, CloseUpdater, 100

Closeadobe:
IfWinExist ahk_class ADOBEGCCLIENT
{
WinClose, ahk_class ADOBEGCCLIENT				;closes adobe shit and fortnite because both of them are shit
}
return

Closefortnite:
IfWinExist ahk_exe FortniteClient-Win64-Shipping.exe
{
WinClose, ahk_exe FortniteClient-Win64-Shipping
}
return

CloseUpdater:
IfWinExist ahk_exe C:\Program Files (x86)\Chromium\Update\ChromiumUpdate.exe
{
WinClose, ahk_exe C:\Program Files (x86)\Chromium\Update\ChromiumUpdate.exe
}
return


#SPACE:: 
Winset, Alwaysontop, , A 
return ;make any window stay on top at all times by pressing windows key + SPACE


#q::
Run, open "C:\Users\Kameron\Desktop\scrcpy-win64\scrcpy-noconsole.exe"
return ;when phone is plugged in it will put it on the screen

;----
;CONTROL SHIFT M TO CREATE A NEW TEXT FILE WHEN EITHER ON DESKTOP OR FILE EXPLORER
;----

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

;----
;opens firefox if it isnt already open
;if its already open it switches from the 2 most recent tabs opened
;----
F2::
IfwinNotExist, ahk_class MozillaWindowClass
	Run, firefox.exe
if WinActive("ahk_class MozillaWindowClass")    
	Send ^{tab}
else
	WinActivate ahk_class MozillaWindowClass
Return

;------------------------------------------------------------------------
; Ctrl+Alt+Home - Resize the current window to 350x700
; Meant to be used with IM windows
;------------------------------------------------------------------------
^!Home:: 
	WinGet, hwnd, ID, A
	WinGetPos, X, Y, Width, Height, ahk_id %hwnd%
	WinMove, ahk_id %hwnd%,, X, Y, 375, 700
return


;----
;runs run.exe if Ctrl+Alt+R is pressed
;----
^!R::
	Send, #{r}
	Sleep, 100
	Send, Shell:Startup
	Send, {Enter}	
return
























































































^X::
ExitApp