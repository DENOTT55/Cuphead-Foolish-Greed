
	global.abLx = X
	global.abLy = Y
	global.abLSx = ssx
	global.abLSx = ssy

	ini_open("AndroidControls.ini")
	ini_write_real("LEFT","X",global.abLx)
	ini_write_real("LEFT","Y",global.abLy)
	ini_write_real("LEFT","Scale X",ssx)
	ini_write_real("LEFT","Scale Y",ssy)
	ini_close()
