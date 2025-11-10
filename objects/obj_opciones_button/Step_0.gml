if vspeed < 0
{
	vspeed += 0.1
}

if global.selected == 1
{
	image_index = 1	
}	else	
{
	image_index = 0	
}

if global.act == 2{
	if global.transition == 1{
		room_goto(rm_island)	
	}
}

// Desaceleración de la cámara
if global.act == 20{
	if obj_camerapoint.hspeed > 0
	{
		obj_camerapoint.hspeed -= 0.5
	}
}

if global.act == 40{
	if obj_camerapoint.hspeed < 0
	{
		obj_camerapoint.hspeed += 0.5
	}	else	{
		global.act = 0
	}
}

if obj_camerapoint.hspeed = 0{
if global.asignar == 0{
if keyboard_check_pressed(global.kjump){
if global.act == 0{
	if global.selected == 1
	{
		obj_camerapoint.hspeed = 36
		global.act = 20
	}
}}

if keyboard_check_pressed(global.kshoot){
if global.act == 20{
	{
		ini_open("Save.ini")
		ini_write_string("Options","calidad",global.graficos)
		ini_write_string("Player","SKINS",global.SKIN_NUM)
		ini_write_string("Player","kleft",global.kleft)
		ini_write_string("Player","kright",global.kright)
		ini_write_string("Player","kup",global.kup)
		ini_write_string("Player","kdown",global.kdown)
		ini_write_string("Player","kjump",global.kjump)
		ini_write_string("Player","kshoot",global.kshoot)
		ini_write_string("Player","klock",global.klock)
		ini_write_string("Player","kex",global.kex)
		ini_write_string("Player","kdash",global.kdash)
		ini_write_string("Player","kweapon",global.kweapon)
		ini_close()
		instance_create_depth(0,0,0,obj_saving_symbol)
		obj_camerapoint.hspeed = -36
		global.act = 40
	}
}}}}