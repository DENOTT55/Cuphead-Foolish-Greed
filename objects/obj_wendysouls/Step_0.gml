if act == 0
if hspeed < 0{
	hspeed += 0.05
}	else	{
	act = 1	
	hspeed = 0
	alarm_set(0,random_range(15,25))
}

if act == 4{
	hspeed -= 0.1	
	if x < -56{	instance_destroy()}
}

image_yscale = base_scale + sin(current_time * bounce_speed) * bounce_strength;
image_xscale = base_scale + cos(current_time * bounce_speed) * bounce_strength;