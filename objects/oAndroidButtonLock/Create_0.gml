image_speed = 0;image_index = 5




ini_open("AndroidControls.ini")
global.abLOCKx  = ini_read_real("LOCK","X",global.abLOCKx)
global.abLOCKy  = ini_read_real("LOCK","Y",global.abLOCKy)
global.abLOCKSx  = ini_read_real("LOCK","Scale X",1)
global.abLOCKSy  = ini_read_real("LOCK","Scale Y",1)
ini_close()

CONFIG = false
flecha = false
live = true

X = global.abLOCKx
Y = global.abLOCKy
Sx = 95*global.abLOCKSx
Sy = 95*global.abLOCKSy

ssx = global.abLOCKSx
ssy = global.abLOCKSy


global.abLOCK = virtual_key_add(X,Y,Sx,Sy,global.klock)

//virtual_key_show(global.abA)
if os_type != os_android {virtual_key_delete(global.abLOCK);instance_destroy()}