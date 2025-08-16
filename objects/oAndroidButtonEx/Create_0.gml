image_speed = 0;image_index = 2




ini_open("AndroidControls.ini")
global.abEXx  = ini_read_real("EX","X",global.abEXx)
global.abEXy  = ini_read_real("EX","Y",global.abEXy)
global.abEXSx  = ini_read_real("EX","Scale X",1)
global.abEXSy  = ini_read_real("EX","Scale Y",1)
ini_close()

CONFIG = false
flecha = false
live = true

X = global.abEXx
Y = global.abEXy
Sx = 95*global.abEXSx
Sy = 95*global.abEXSy

ssx = global.abEXSx
ssy = global.abEXSy


global.abEX = virtual_key_add(X,Y,Sx,Sy,global.kex)

//virtual_key_show(global.abA)
if os_type != os_android {virtual_key_delete(global.abEX);instance_destroy()}