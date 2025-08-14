
	global.abLOCKx = X
	global.abLOCKy = Y
	global.abLOCKSx = ssx
	global.abLOCKSx = ssy

	ini_open("AndroidControls.ini")
	ini_write_real("LOCK","X",global.abLOCKx)
	ini_write_real("LOCK","Y",global.abLOCKy)
	ini_write_real("LOCK","Scale X",ssx)
	ini_write_real("LOCK","Scale Y",ssy)
	ini_close()
