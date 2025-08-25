if y > 500{
	instance_destroy()	
}

image_yscale = base_scale + sin(current_time * bounce_speed) * bounce_strength;
image_xscale = base_scale + cos(current_time * bounce_speed) * bounce_strength;