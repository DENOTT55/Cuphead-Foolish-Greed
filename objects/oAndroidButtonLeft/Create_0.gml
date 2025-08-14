image_speed = 0;image_index = 1

if os_type != os_android {instance_destroy()}

ini_open("AndroidControls.ini")
global.abLx  = ini_read_real("LEFT","X",95-24)
global.abLy  = ini_read_real("LEFT","Y",360*2-(95*1.4)-120)
global.abLSx  = ini_read_real("LEFT","Scale X",1)
global.abLSy  = ini_read_real("LEFT","Scale Y",1)
ini_close()

image_angle = 90

CONFIG = false

X = global.abLx
Y = global.abLy
Sx = 95*global.abLSx
Sy = 95*global.abLSy

ssx = global.abLSx
ssy = global.abLSy

global.abL = virtual_key_add(X,Y,Sx,Sy,global.kleft)

//virtual_key_show(global.abL)