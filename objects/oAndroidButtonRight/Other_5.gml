
	global.abRx = X
	global.abRy = Y
	global.abRSx = ssx
	global.abRSx = ssy

	ini_open("AndroidControls.ini")
	ini_write_real("RIGHT","X",global.abRx)
	ini_write_real("RIGHT","Y",global.abRy)
	ini_write_real("RIGHT","Scale X",ssx)
	ini_write_real("RIGHT","Scale Y",ssy)
	ini_close()
