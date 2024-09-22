global toggle := 0
A_MaxHotkeysPerInterval := 1000000
q::{ ;smash
	global toggle
	if(toggle = 0 && (WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
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
x::{ ;spin
	global toggle
	if(toggle = 0 && (WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
	while getkeystate("x","P") {
		loop 50 {
			MouseMove(A_Index,A_ScreenHeight / 2)
			Sleep 30
		}
	}
	MouseClick "left"
	} else SendText("x ")
}
r:: { ;spin and autoclick
	global toggle
	if(toggle = 0 && (WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
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
c:: { ;fling 
	global toggle
	if(toggle = 0 && (WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
	loop 5 {
		MouseMove(A_ScreenWidth / 2 - A_Index * 2,A_ScreenHeight / 2 - A_Index * 2)
		Sleep 10
	}
	Sleep 50
	MouseClick "left"
	} else SendText("c ")
}
\:: { ;EXIT MACRO
	ExitApp
}
tutorial() {
	MsgBox("TUTORIAL!`n`n`nPRESS CONTROL T TO VIEW TUTORIAL!`n`n`nKEYS ON ENGLISH KEYBOARD LAYOUT!`n`n`nhold q to smash whatever your holding into the ground`n`nhold x to spin around whatever your holding then let go when you stop holding`n`npress c to fling away whoever you are holding`n`nhold r to spin and autoclick and push`n`nhold f for autoclick and push`n`ncontrol p to pause/unpause macro`n`nhold z to spam chat noises`n`n\ to exit macro`n`n`nYOU CAN PRESS ENTER INSTEAD OF CLICKING OK")
}
^t:: { ;TUTORIAL
	tutorial()
}
tutorial()
