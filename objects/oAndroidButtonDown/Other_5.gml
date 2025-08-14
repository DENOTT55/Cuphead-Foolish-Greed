
	global.abDx = X
	global.abDy = Y
	global.abDSx = ssx
	global.abDSx = ssy

	ini_open("AndroidControls.ini")
	ini_write_real("DOWN","X",global.abDx)
	ini_write_real("DOWN","Y",global.abDy)
	ini_write_real("DOWN","Scale X",ssx)
	ini_write_real("DOWN","Scale Y",ssy)
	ini_close()
