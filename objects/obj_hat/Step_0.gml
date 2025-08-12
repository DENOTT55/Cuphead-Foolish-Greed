if act == 0{
vspeed += 0.1}

if act == 3{
	if image_alpha < 0{
	instance_destroy()	
	}	else	{
	image_alpha -= 0.05	
	}
}