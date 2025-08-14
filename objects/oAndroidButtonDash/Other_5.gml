
	global.abDASHx = X
	global.abDASHy = Y
	global.abDASHSx = ssx
	global.abDASHSx = ssy

	ini_open("AndroidControls.ini")
	ini_write_real("DASH","X",global.abDASHx)
	ini_write_real("DASH","Y",global.abDASHy)
	ini_write_real("DASH","Scale X",ssx)
	ini_write_real("DASH","Scale Y",ssy)
	ini_close()
