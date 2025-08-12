if vspeed < 0
{
	vspeed += 0.1
}

if global.selected == 0
{
	image_index = 1	
}	else	
{
	image_index = 0	
}

if global.act == 1{
	if global.transition == 1{
		room_goto(rm_island)	
	}
}

if global.asignar == 0{
if keyboard_check_pressed(global.kjump){
if global.act == 0{
	if global.selected == 0
	{
		instance_create_layer(x,y,"Transition",obj_transition)	
		global.act = 1
		audio_play_sound(snd_enterlevel,10,false,1.4,0,random_range(0.7,1.1))
	}
}	
}

if keyboard_check_pressed(global.kdown){
if global.selected < 2
{
	global.selected += 1	
	audio_play_sound(snd_weaponmenu_clic,10,false,1,0,random_range(0.8,1.2))
}}

if keyboard_check_pressed(global.kup){
if	global.selected > 0
{
	global.selected -= 1
	audio_play_sound(snd_weaponmenu_clic,10,false,1,0,random_range(0.8,1.2))
}}}