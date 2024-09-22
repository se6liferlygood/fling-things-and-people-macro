global countsmash := 0
global toggle := 0
A_MaxHotkeysPerInterval := 1000000
q::{ ;smash
	global toggle
	if(toggle = 0 && (WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
	global countsmash
	countsmash++
	Sleep 50
	Send("/")
	Sleep 50
	str := "smash count " countsmash
	SendText(str)
	Sleep 50
	Send('{Enter}')
	Sleep 50
	Loop A_ScreenHeight / 150 {
		MouseMove(A_ScreenWidth + A_Index * 10, A_ScreenHeight - A_Index)
		Sleep 1
	}
	Sleep 100
	Loop A_ScreenHeight / 150 {
		MouseMove(A_ScreenWidth - A_Index * 10, A_ScreenHeight + A_Index)
		Sleep 1
	}
	Sleep 100
	} else SendText("q ")
}
global count := 0
x::{ ;spin
	global toggle
	if(toggle = 0 && (WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
	global count
	count++
	Sleep 100
	Send("/")
	Sleep 100
	str := "sigma spin " count
	SendText(str)
	Sleep 100
	Send('{Enter}')
	Sleep 100
	while getkeystate("x","P") {
		loop 100 {
			MouseMove(A_Index,A_ScreenHeight / 2)
			Sleep 30
		}
	}
	MouseClick "left"
	} else SendText("x ")
}
global countohio := 0
r:: { ;spin and autoclick
	global toggle
	if(toggle = 0 && (WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
	global countohio
	countohio++
	Sleep 100
	Send("/")
	Sleep 100
	str := "ohio spin " countohio
	SendText(str)
	Sleep 100
	Send('{Enter}')
	Sleep 100
	while getkeystate("r","P") {
		loop 50 {
			MouseMove(A_Index,A_ScreenHeight / 2)
			loop 10 {
			MouseClick "left"
			MouseClick "right"
			}
			Sleep 25
		}
	}
	} else SendText("r ")
}
f:: { ;;auto clicker
	global toggle
	if(toggle = 0 && (WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
	while getkeystate("f","P") {
		loop 10 {
			MouseClick "left"
			MouseClick "right"
		}
		Sleep 1
	}
	} else SendText("f ")
}
^p:: { ;maco toggle
	global toggle
	if(toggle = 0 && (WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
		toggle := 1
		MsgBox("MACRO PAUSED")
	} else {
		toggle := 0
		MsgBox("MACRO UNPAUSED")
	}
}
z:: { ;spam
	global toggle
	if(toggle = 0 && (WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
	while getkeystate("z","P") {
		loop 5 {
			Send("/")
			Sleep 25
			str := "/e " A_Index
			SendText(str)
			Sleep 25
			Send('{Enter}')
			Sleep 25
			Send("/")
			Sleep 25
			str := "/e hi"
			SendText(str)
			Sleep 25
			Send('{Enter}')
			Sleep 25
			Send("/")
			Sleep 25
			str := "/e laugh"
			SendText(str)
			Sleep 25
			Send('{Enter}')
			Sleep 25
		}
	}
	} else SendText("z ")
}
\:: { ;EXIT MACRO
	ExitApp
}
tutorial() {
	MsgBox("TUTORIAL!`n`n`nPRESS CONTROL T TO VIEW TUTORIAL!`n`n`nKEYS ON ENGLISH KEYBOARD LAYOUT!`n`n`nhold q to smash whatever your holding into the ground`n`nhold x to spin around whatever your holding then let go when you stop holding`n`nhold r to spin and autoclick and push`n`nhold f for autoclick and push`n`ncontrol p to pause/unpause macro`n`nhold z to spam chat noises`n`n\ to exit macro`n`n`nYOU CAN PRESS ENTER INSTEAD OF CLICKING OK")
}
^t:: { ;TUTORIAL
	tutorial()
}
tutorial()