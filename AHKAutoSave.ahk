Menu, tray, add
Menu, tray, add, Auto Saving, toggleSave
Menu, tray, Check, Auto Saving
Menu, Interval, add, 10 Seconds, setIntervalTen
Menu, Interval, add, 20 Seconds, setIntervalTwenty
Menu, Interval, add, 30 Seconds, setIntervalThirty
Menu, Interval, Check, 30 Seconds
Menu, tray, add, Interval, :Interval

save = true
interval = 30000

loop {
	Sleep, %interval%
	if (%save% == true) {
		Send, ^s
	}
}
return

toggleSave:
	save := !%save%

	if (%save% == false) {
		Menu, tray, Uncheck, Auto Saving
	} else {
		Menu, tray, Check, Auto Saving
	}
	return

setIntervalTen:
	interval = 10000
	uncheckAll()
	Menu, Interval, Check, 10 Seconds
	return

setIntervalTwenty:
	interval = 20000
	uncheckAll()
	Menu, Interval, Check, 20 Seconds
	return

setIntervalThirty:
	interval = 30000
	uncheckAll()
	Menu, Interval, Check, 30 Seconds
	return

uncheckAll() {
	MsgBox, banana
	Menu, Interval, Uncheck, 10 Seconds
	Menu, Interval, Uncheck, 20 Seconds
	Menu, Interval, Uncheck, 30 Seconds
}