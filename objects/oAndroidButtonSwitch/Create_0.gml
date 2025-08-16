image_speed = 0;image_index = 4




ini_open("AndroidControls.ini")
global.abSWITCHx  = ini_read_real("SWITCH","X",global.abSWITCHx)
global.abSWITCHy  = ini_read_real("SWITCH","Y",global.abSWITCHy)
global.abSWITCHSx  = ini_read_real("SWITCH","Scale X",1)
global.abSWITCHSy  = ini_read_real("SWITCH","Scale Y",1)
ini_close()

CONFIG = false
flecha = false
live = true

X = global.abSWITCHx
Y = global.abSWITCHy
Sx = 95*global.abSWITCHSx
Sy = 95*global.abSWITCHSy

ssx = global.abSWITCHSx
ssy = global.abSWITCHSy


global.abSWITCH = virtual_key_add(X,Y,Sx,Sy,global.kweapon)

//virtual_key_show(global.abA)
if os_type != os_android {virtual_key_delete(global.abSWITCH);instance_destroy()}