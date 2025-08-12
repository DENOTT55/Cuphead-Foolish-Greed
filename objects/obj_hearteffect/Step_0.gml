image_xscale += escala
image_yscale += escala
if escala > 0.02{
	escala -= 0.02	
}

if image_xscale > 1{
	if image_alpha > 0{
		image_alpha -= 0.05
	}	else	{
		instance_destroy()	
	}
}