if act == 0 {
	instance_create_depth(x,y,-1,obj_saving_symbol)
	act = 1	
	obj_cuphead_player.enable = 0
	alarm_set(0,75)
}

if room == rm_monte_cao_tic{
	global.fmonte = 1
	audio_stop_sound(monte_caotic_m)
	ini_open("Save.ini")
	ini_write_real("World","fmonte",1)
	ini_close()
}

if room == rm_bosque_helado{
	global.fbosqueh = 1
	audio_stop_sound(snowvalley_m)
	ini_open("Save.ini")
	ini_write_real("World","fbosqueh",1)
	ini_close()
}