if die = 0{
if image_xscale > 1 {
	image_xscale -= 0.05	
	image_yscale += 0.05}
}
if die == 0 {
if act == 1 {
	if movement == 0{
		if hspeed < 5{
			hspeed += 0.1}	
	}	else	{
		if hspeed > -5{
			hspeed -= 0.1}
	}
	
	if x > 474{
		movement = 1	
	}
	
	if x < 200{
		movement = 0
	}
}}

if die == 2 {
	image_xscale += 0.01
	image_yscale -= 0.01
	image_angle = direction
	direction = point_direction(x,y,642,344)
	speed += 0.2
	if image_alpha > 0{
	image_alpha -= 0.02}
	else
	{

		obj_boss_box.act = 1
		instance_destroy()
	}
}

if die != 2{
if act == 4
if image_alpha < 1{
	image_alpha += 0.1	
}}