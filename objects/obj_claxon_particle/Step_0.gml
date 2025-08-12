image_xscale += 0.1 
image_yscale += 0.1 
hspeed -= 0.05

if act == 1{
	if image_alpha < 0{
	instance_destroy()	
	}	else	{
	image_alpha -= 0.2	
	}
}