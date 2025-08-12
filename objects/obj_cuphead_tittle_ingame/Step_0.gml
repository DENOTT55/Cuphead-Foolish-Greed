if appear != 3{
if image_alpha < 1
{
	image_alpha += 0.01
}
if image_xscale < 1
{
	image_xscale += 0.001	
	image_yscale += 0.001
}}

if appear == 1 || appear == 2
{
	if obj_pressanybutton.vspeed < 0{
	obj_pressanybutton.vspeed += 0.2}	
	else
	{
	appear = 2	
	}
}

if appear == 3{
	if image_alpha > 0.5{
		image_alpha -= 0.02
	}
}