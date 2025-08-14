
	global.abAx = X
	global.abAy = Y
	global.abASx = ssx
	global.abASx = ssy

	ini_open("AndroidControls.ini")
	ini_write_real("A","X",global.abAx)
	ini_write_real("A","Y",global.abAy)
	ini_write_real("A","Scale X",ssx)
	ini_write_real("A","Scale Y",ssy)
	ini_close()
