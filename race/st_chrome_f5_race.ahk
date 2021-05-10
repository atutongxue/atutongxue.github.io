;160903 press f5, chrome will refresh


;whether S.T. is active, if yes, f5 will save and send f5 to Chrome
#IfWinActive, ahk_class PX_WINDOW_CLASS

	F4::
	send,^a
	sleep,100
	send,^v
	return

	F5::
	st_save()

	TrayTip %A_ScriptName%, Standing by ...
	sleep, 200
	putty_run()
	HideTrayTip()

	return
#If

st_save(){
	send,^s
}

putty_run(){
	win_title = 比赛 | 阿图同学 - Google Chrome
	;win_title = 64.138_toy
	;win_title = ahk_class PuTTY

	IfWinExist, %win_title%
	{
		WinActivate, %win_title%
		sleep, 500
		send,{F5}
		;send,p a.py {enter}
		WinActivate, ahk_class PX_WINDOW_CLASS
	    
	}else{
		MsgBox "Window >>>"+%win_title%+"<<< not exist"
	}
}


; Copy this function into your script to use it.
HideTrayTip() {
    TrayTip  ; Attempt to hide it the normal way.
    if SubStr(A_OSVersion,1,3) = "10." {
        Menu Tray, NoIcon
        Sleep 200  ; It may be necessary to adjust this sleep.
        Menu Tray, Icon
    }
}
 