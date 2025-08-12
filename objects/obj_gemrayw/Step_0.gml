if image_yscale < 1{
	image_yscale += 0.2
}
image_angle += dir

if dis == 1 {
	if image_alpha > 0
	{
		image_alpha -= 0.05
	}	else	{
		instance_destroy()	
	}
}