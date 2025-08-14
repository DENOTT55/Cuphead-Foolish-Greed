image_speed = 0;image_index = 0

if os_type != os_android {instance_destroy()}

ini_open("AndroidControls.ini")
global.abAx  = ini_read_real("A","X",640*2-(95*1.5))
global.abAy  = ini_read_real("A","Y",360*2-(95*2.8))
global.abASx  = ini_read_real("A","Scale X",1)
global.abASy  = ini_read_real("A","Scale Y",1)
ini_close()

CONFIG = false

X = global.abAx
Y = global.abAy
Sx = 95*global.abASx
Sy = 95*global.abASy

ssx = global.abASx
ssy = global.abASy


global.abA = virtual_key_add(X,Y,Sx,Sy,global.kjump)

//virtual_key_show(global.abA)
