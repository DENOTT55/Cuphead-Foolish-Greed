
	global.abUx = X
	global.abUy = Y
	global.abUSx = ssx
	global.abUSx = ssy

	ini_open("AndroidControls.ini")
	ini_write_real("UP","X",global.abUx)
	ini_write_real("UP","Y",global.abUy)
	ini_write_real("UP","Scale X",ssx)
	ini_write_real("UP","Scale Y",ssy)
	ini_close()
