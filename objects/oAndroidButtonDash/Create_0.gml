image_speed = 0;image_index = 3




ini_open("AndroidControls.ini")
global.abDASHx  = ini_read_real("DASH","X",global.abDASHx)
global.abDASHy  = ini_read_real("DASH","Y",global.abDASHy)
global.abDASHSx  = ini_read_real("DASH","Scale X",1)
global.abDASHSy  = ini_read_real("DASH","Scale Y",1)
ini_close()

CONFIG = false

X = global.abDASHx
Y = global.abDASHy
Sx = 95*global.abDASHSx
Sy = 95*global.abDASHSy

ssx = global.abDASHSx
ssy = global.abDASHSy


global.abDASH = virtual_key_add(X,Y,Sx,Sy,global.kdash)

//virtual_key_show(global.abA)
if os_type != os_android {virtual_key_delete(global.abDASH);instance_destroy()}