
	global.abEXx = X
	global.abEXy = Y
	global.abEXSx = ssx
	global.abEXSx = ssy

	ini_open("AndroidControls.ini")
	ini_write_real("EX","X",global.abEXx)
	ini_write_real("EX","Y",global.abEXy)
	ini_write_real("EX","Scale X",ssx)
	ini_write_real("EX","Scale Y",ssy)
	ini_close()
