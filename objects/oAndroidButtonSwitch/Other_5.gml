
	global.abSWITCHx = X
	global.abSWITCHy = Y
	global.abSWITCHSx = ssx
	global.abSWITCHSx = ssy

	ini_open("AndroidControls.ini")
	ini_write_real("SWITCH","X",global.abSWITCHx)
	ini_write_real("SWITCH","Y",global.abSWITCHy)
	ini_write_real("SWITCH","Scale X",ssx)
	ini_write_real("SWITCH","Scale Y",ssy)
	ini_close()
