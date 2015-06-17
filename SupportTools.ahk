#IfWinActive GTA:SA:MP
:?:/hc::
	SendInput, /hc{space}
	Input, id, V, {enter}{f6}

	Prices = %A_ScriptDir%\vehicle.txt
	vehicle_id = %id%
	pmask := "NAME: ([A-Z]*) | CLASS: ([A-Z]*) | COST: ([0-9 ]*) | COST 1%: ([0-9]*)"
	Loop
	{
		FileReadLine, line, %Prices%, %A_Index%
		foundpos:=RegExMatch(line, pmask, code)
		if (code1 == vehicle_id) {
			SendInput, {DELETE}
			Sleep, 200
			SendInput {F6}%line%
		return
		}
		if (A_Index == 84) {
			break
		}
	}
return

:?:/hh::
	SendInput, /hh{space}
	Input, id, V, {enter}{f6}

	Prices = %A_ScriptDir%\house.txt
	house_id = %id%
	pmask := "ID ([0-9 ]*) | CLASS ([A-Z]*) | COST ([0-9 ]*)"
	Loop
	{
		FileReadLine, line, %Prices%, %A_Index%
		foundpos:=RegExMatch(line, pmask, code)
		if (code1 == house_id) {
			SendInput, {DELETE}
			Sleep, 200
			SendInput {F6}%line%
		return
		}
		if (A_Index == 731) {
			break
		}
	}
return

