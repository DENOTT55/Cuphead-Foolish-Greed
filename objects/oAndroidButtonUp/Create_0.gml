image_speed = 0;image_index = 1

if os_type != os_android {instance_destroy()}

ini_open("AndroidControls.ini")
global.abUx  = ini_read_real("UP","X",95*1.5)
global.abUy  = ini_read_real("UP","Y",360*2-(95*1.2)-96-120)
global.abUSx  = ini_read_real("UP","Scale X",1)
global.abUSy  = ini_read_real("UP","Scale Y",1)
ini_close()

image_angle = 0

CONFIG = false

X = global.abUx
Y = global.abUy
Sx = 95*global.abUSx
Sy = 95*global.abUSy

ssx = global.abUSx
ssy = global.abUSy

global.abU = virtual_key_add(X,Y,Sx,Sy,global.kup)
//virtual_key_show(global.abU)