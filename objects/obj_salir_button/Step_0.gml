if vspeed < 0
{
	vspeed += 0.1
}

if global.selected == 2
{
	image_index = 1	
}	else	
{
	image_index = 0	
}

if global.act == 3{
	if global.transition == 1{
		game_end();
	}
}

if global.asignar == 0{
if keyboard_check_pressed(global.kjump){
if global.act == 0{
	if global.selected == 2
	{
		instance_create_layer(x,y,"Transition",obj_transition)	
		global.act = 3
	}
}}}