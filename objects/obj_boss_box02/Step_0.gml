if image_xscale > 1 {
	image_xscale -= 0.02	
	image_yscale += 0.02}

if die == 1{
	if (random(3) >= 2)
	{
		instance_create_depth(x+random_range(-72,72),y+random_range(-72,16),depth-1,obj_big_smoke_particle)	
	}
		
}
	
if die != 0{
if act == 3 {
	if global.transition == 1{
		room_goto(rm_island)
	}
}
}