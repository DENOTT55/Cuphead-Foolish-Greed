if image_xscale < 1{
	image_xscale += 0.2	
	image_yscale += 0.2
	speed += 0.8
}

image_angle = base_scale + sin(current_time * bounce_speed) * bounce_strength;
