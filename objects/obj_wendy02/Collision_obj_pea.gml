hp -= 1
image_alpha = 0.9
alarm_set(11,4)
if act != 6{
if hp < 1 {
	act = 6
	sprite_index = spr_wendy2_die
	image_speed = 1
	image_index = 0
	alarm_set(6,60)
	global.fwendy = 1
	ini_open("Save.ini")
	ini_write_real("World","fwendy",1)
	ini_close()
	audio_play_sound(snd_BOSS_Explosion,10,false)
	instance_create_layer(0,0,"Instances",obj_knockout_letter)
	audio_stop_sound(winter_hunt_m)
}}