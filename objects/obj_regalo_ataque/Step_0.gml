if act == 1 {
	if hspeed < 0	{
		hspeed += 1
	}	else	{
		hspeed = 0	
	}
	
	if image_speed > 0 {
		image_speed -= 0.10
	}
}

if act == 0 {
	vspeed += 0.2	
}