if act == 1{
	act = 2
	sprite_index = spr_wendy_idle
	image_speed = 1
}

if act == 3{
	if atk = 1{
		image_speed = 0
		image_index = 5
		alarm_set(2,45)
		
	}
	if atk = 2{		
		image_speed = 0
		image_index = 9
		image_xscale = 1.2
		image_yscale = 0.8
		speed = 2
		direction = 0
		alarm_set(9,45)
		instance_create_depth(x-2,y-124,depth-2,obj_hearteffect)
		instance_create_depth(x-6,y-124,depth-1,obj_wheart01)
		alarm_set(3,15)
	}
	if atk = 3{
		image_speed = 0
		image_index = 4	
		instance_create_depth(x-80,y-156,depth-2,obj_gemrayw)
		instance_create_depth(x-80,y-156,depth-2,obj_gemrayw)
		instance_create_depth(x-80,y-156,depth-2,obj_gemrayw)
		instance_create_depth(x-80,y-156,depth-2,obj_gemrayw)
		instance_create_depth(x-80,y-156,depth-2,obj_gemrayw)
		instance_create_depth(x-80,y-156,depth-2,obj_gemrayw)
		instance_create_depth(x-80,y-156,depth-2,obj_gemrayw)
		instance_create_depth(x-80,y-156,depth-2,obj_gemrayw)
		alarm_set(9,145)
	}
}

