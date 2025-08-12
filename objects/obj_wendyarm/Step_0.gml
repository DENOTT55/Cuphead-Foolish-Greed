if x < 0{
	instance_destroy()	
}

if obj_wendy02.act == 6	{
	sprite_index = spr_wendyarm
	image_speed = 0
	image_index = 0
	if image_yscale = 1{
		vspeed = 8
		hspeed = 0
	}
	
	if image_yscale = -1{
		vspeed = -8
		hspeed = 0
	}
}