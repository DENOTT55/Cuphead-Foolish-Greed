if die == 0{
if act == 0{
	act = 1
	sprite_index = spr_boss02_idle
	image_speed = 1
	image_xscale = 1.1
	image_yscale = 0.9
}

if act == 10{
	act = 20
	sprite_index = spr_boss02_throw
	image_speed = 0.80
	instance_create_depth(x-72,y-48,depth+1,obj_bomba_globo)
	image_xscale = 1.2
	image_yscale = 0.8
}

if act == 11{
	act = 21
	sprite_index = spr_boss02_entrance
	image_index = 0
	image_speed = 0
	alarm_set(1,45)
}

if act == 12{
	act = 20
	sprite_index = spr_boss02_throw
	image_speed = 0.80
	instance_create_depth(x-72,y-48,depth+1,obj_penny)
	image_xscale = 1.2
	image_yscale = 0.8
}

if act == 20{
	image_index = 1
	image_speed = 0
	alarm_set(0,30)
}}

