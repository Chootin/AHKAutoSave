Menu, tray, add
Menu, tray, add, Auto Save, toggleSave
Menu, Interval, add, 10 Seconds, setIntervalTen
Menu, Interval, add, 20 Seconds, setIntervalTwenty
Menu, Interval, add, 30 Seconds, setIntervalThirty
Menu, Interval, Check, 30 Seconds
Menu, tray, add, Interval, :Interval

save = false
interval := 30000

loop {
	Sleep, %interval%
	if (save = true) {
		WinGet, temp, ProcessName, A
		if (temp = process_name) {
			MsgBox, Saving!
			Send, ^s
		}
	}
}
return

toggleSave:
	if (save = true) {
		save := false
		Menu, tray, Uncheck, Auto Saving
	} else {
		save := true
		KeyWait, LButton, D

		WinGet, process_name, ProcessName, A
		MsgBox, Auto-saving: %process_name%

		Menu, tray, Check, Auto Saving
	}
	return

setIntervalTen:
	interval := 10000
	uncheckAll()
	Menu, Interval, Check, 10 Seconds
	return

setIntervalTwenty:
	interval := 20000
	uncheckAll()
	Menu, Interval, Check, 20 Seconds
	return

setIntervalThirty:
	interval := 30000
	uncheckAll()
	Menu, Interval, Check, 30 Seconds
	return

uncheckAll() {
	Menu, Interval, Uncheck, 10 Seconds
	Menu, Interval, Uncheck, 20 Seconds
	Menu, Interval, Uncheck, 30 Seconds
}