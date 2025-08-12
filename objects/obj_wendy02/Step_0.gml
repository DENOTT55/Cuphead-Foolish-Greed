if act == 0{
x = xx + random_range(-6,6)	
y = yy + random_range(-2,2)	
}

if act == 2{
	if image_xscale < 1{
		image_xscale += 0.1	
		image_yscale += 0.1
	}
}

if die != 0{
	if global.transition == 1{
		room_goto(rm_island)
	}
}

image_yscale = base_scale + sin(current_time * bounce_speed) * bounce_strength;
image_xscale = base_scale + cos(current_time * bounce_speed) * bounce_strength;