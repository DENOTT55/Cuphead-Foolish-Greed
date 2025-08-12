if scale = 0{
	if image_xscale < 1.1{
		image_xscale += 0.01	
		image_yscale -= 0.01
		vspeed -= 0.2
	}	else	{
		scale = 1	
	}
}	else	{
	if image_xscale > 0.9{
		image_xscale -= 0.01
		image_yscale += 0.01
		vspeed += 0.2
	}	else	{
		scale = 0
	}
}