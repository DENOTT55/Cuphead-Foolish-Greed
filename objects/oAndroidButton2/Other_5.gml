
	global.abBx = X
	global.abBy = Y
	global.abBSx = ssx
	global.abBSx = ssy

	ini_open("AndroidControls.ini")
	ini_write_real("B","X",global.abBx)
	ini_write_real("B","Y",global.abBy)
	ini_write_real("B","Scale X",ssx)
	ini_write_real("B","Scale Y",ssy)
	ini_close()
