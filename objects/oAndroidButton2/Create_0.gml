image_speed = 0;image_index = 1

if os_type != os_android {instance_destroy()}

ini_open("AndroidControls.ini")
global.abBx  = ini_read_real("B","X",640*2-(95*2.1))
global.abBy  = ini_read_real("B","Y",360*2-(95*1.4))
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

