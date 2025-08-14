image_speed = 0;image_index = 1

if (room = rm_island || room = rm_menu) {image_index = 7}



ini_open("AndroidControls.ini")
global.abBx  = ini_read_real("B","X",global.abBx)
global.abBy  = ini_read_real("B","Y",global.abBy)
global.abBSx  = ini_read_real("B","Scale X",1)
global.abBSy  = ini_read_real("B","Scale Y",1)
ini_close()

CONFIG = false

X = global.abBx
Y = global.abBy
Sx = 95*global.abBSx
Sy = 95*global.abBSy

ssx = global.abBSx
ssy = global.abBSy

global.abB = virtual_key_add(X,Y,Sx,Sy,global.kshoot)

//virtual_key_show(global.abB)

if os_type != os_android {virtual_key_delete(global.abB);instance_destroy()}