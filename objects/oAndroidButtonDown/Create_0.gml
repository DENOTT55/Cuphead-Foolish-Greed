image_speed = 0;image_index = 1



ini_open("AndroidControls.ini")
global.abDx  = ini_read_real("DOWN","X",95*1.5)
global.abDy  = ini_read_real("DOWN","Y",360*2-(95*1.2)+48-120)
global.abDSx  = ini_read_real("DOWN","Scale X",1)
global.abDSy  = ini_read_real("DOWN","Scale Y",1)
ini_close()

image_angle = 180
image_speed = 0;image_index = 0

CONFIG = false
flecha = true
live = true

X = global.abDx
Y = global.abDy
Sx = 95*global.abDSx
Sy = 95*global.abDSy

ssx = global.abDSx
ssy = global.abDSy

global.abD = virtual_key_add(X,Y,Sx,Sy,global.kdown)
//virtual_key_show(global.abD)

if os_type != os_android {virtual_key_delete(global.abD);instance_destroy()}
