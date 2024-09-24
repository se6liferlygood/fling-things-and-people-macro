global toggle := 0
A_MaxHotkeysPerInterval := 1000000
DtoR(x) { ;degrees to radians 
	return x * (3.14/180)
}
q::{ ;smash
	global toggle
	if(toggle = 0 && (WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
	MouseGetPos &xpos, &ypos
		while getkeystate("q","P") {
			i := 25
			loop i {
				Send('{WheelUp}')
				MouseMove(xpos + Cos(DtoR(360 * (A_Index / i))) * 25,ypos + Sin(DtoR(360 * (A_Index / i))) * 100)
				Sleep 1
			}
		}
	} else SendText("q ")
}
x::{ ;spin
	global toggle
	if(toggle = 0 && (WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
	MouseGetPos &xpos, &ypos
	while getkeystate("x","P") {
		loop 50 {
			MouseMove(A_Index,ypos)
			Sleep 20
		}
	}
	} else SendText("x ")
}
r:: { ;spin and autoclick
	global toggle
	if(toggle = 0 && (WinActive("Roblox") || WinActive("RobloxPlayerBeta") || WinActive("Roblox.exe"))) {
	MouseGetPos &xpos, &ypos
	while getkeystate("r","P") {
		loop 50 {
			MouseMove(A_Index,ypos)
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
	MouseGetPos &xpos, &ypos
	loop 5 {
		MouseMove(xpos - A_Index * 2,ypos - A_Index * 3)
		Sleep 10
	}
	Sleep 50
	MouseClick "left"
	} else SendText("c ")
}
\:: { ;EXIT MACRO
	MsgBox("EXITED MACRO!")
	ExitApp
}
tutorial() {
	MsgBox("TUTORIAL!`n`n`nPRESS CONTROL T TO VIEW TUTORIAL!`n`n`nKEYS ON ENGLISH KEYBOARD LAYOUT!`n`n`nhold q to smash whatever your holding into the ground`n`nhold x to spin around whatever your holding then let go when you stop holding`n`npress c to fling away whoever you are holding`n`nhold r to spin and autoclick and push`n`nhold f for autoclick and push`n`ncontrol p to pause/unpause macro`n`nhold z to spam chat noises`n`n\ to exit macro`n`n`nYOU CAN PRESS ENTER INSTEAD OF CLICKING OK")
}
^t:: { ;TUTORIAL
	tutorial()
}
tutorial()
