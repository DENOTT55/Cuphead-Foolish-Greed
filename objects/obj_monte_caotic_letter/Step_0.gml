if act == 0 {
if image_alpha < 1{
	image_alpha += 0.1	
}
if image_xscale < 1{
	image_xscale += 0.05
	image_yscale += 0.05
}}

if act == 2 {
	if image_alpha > 0{
	image_alpha -= 0.1}
	else
	{
		instance_destroy()
		obj_worldmap_cuphead.enable = 1
		layer_enable_fx("dark_effect",false)	

	}
}

if act == 3 {
	if global.transition == 1{
		room_goto(rm_monte_cao_tic)
	}
}

if keyboard_check_pressed(global.kjump)
{
if act == 1{
	instance_create_layer(x,y,"Transition",obj_transition)
	act = 3
	audio_play_sound(snd_enterlevel,10,false,1.4,0,random_range(0.7,1.1))
}	
}

if keyboard_check_pressed(global.kshoot)
{
if act == 1{
	act = 2
}	
}