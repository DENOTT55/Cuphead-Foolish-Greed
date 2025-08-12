if image_xscale = 1{
	hspeed += -0.1
}

if image_xscale = -1{
	hspeed += 0.1
}

if dis == 0{
	if image_alpha < 1{
	image_alpha	+= 0.1
	}
}

if dis == 1{
	if image_alpha > 0{
	image_alpha	-= 0.05
	}	else	{
	instance_destroy()	
	}
}