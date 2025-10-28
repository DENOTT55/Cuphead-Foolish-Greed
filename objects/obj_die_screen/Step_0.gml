if entrance == 1{
if image_alpha < 1 {
	image_alpha += 0.05	
}}

if csiluette < 640{
	csiluette += 2	
}

if act == 2 {
	if global.transition == 1{
		room_restart()
	}
}

if act == 3 {
	if global.transition == 1{
		room_goto(rm_island)
	}
}
	
if keyboard_check_pressed(global.kjump){
if act == 1{
	instance_create_layer(x,y,"Transition",obj_transition)
	audio_sound_gain(song,0,500)
	image_index = 1
	act = 2
	}	
}

if keyboard_check_pressed(global.kshoot){
if act == 1{
	instance_create_layer(x,y,"Transition",obj_transition)
	image_index = 2
	act = 3
	}	
}