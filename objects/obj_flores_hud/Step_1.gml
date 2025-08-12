if image_alpha < 1
{
	image_alpha += 0.1	
}

if appear == 0{
if image_xscale < 2{
	image_xscale += 0.1	
	image_yscale += 0.1
}	else	{
appear = 1
}}	
if appear == 1
{
image_yscale = 2 + sin(current_time * bounce_speed) * bounce_strength;
image_xscale = 2 + cos(current_time * bounce_speed) * bounce_strength;}