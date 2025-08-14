image_speed = 0;image_index = 1



ini_open("AndroidControls.ini")
global.abRx  = ini_read_real("RIGHT","X",(95*2)+24)
global.abRy  = ini_read_real("RIGHT","Y",360*2-(95*1.4)-120)
global.abRSx  = ini_read_real("RIGHT","Scale X",1)
global.abRSy  = ini_read_real("RIGHT","Scale Y",1)
ini_close()

image_angle = 270

CONFIG = false

X = global.abRx
Y = global.abRy
Sx = 95*global.abRSx
Sy = 95*global.abRSy

ssx = global.abRSx
ssy = global.abRSy

global.abR = virtual_key_add(X,Y,Sx,Sy,global.kright)

//virtual_key_show(global.abR)

if os_type != os_android {virtual_key_delete(global.abR);instance_destroy()}
