if die == 0 {
hp -= 1
image_alpha = 0.8
alarm_set(11,4)

if hp < 1 {
	die = 1
	sprite_index = die
	image_speed = 1
	instance_destroy(obj_clown_mob)
	instance_destroy(obj_clown_mob_1)
	instance_destroy(obj_proyectil_payaso)
	instance_destroy(obj_bomba_globo)
	instance_destroy(obj_explosion_globo)
	instance_create_layer(0,0,"Instances",obj_knockout_letter)
	alarm_set(10,120)
	audio_stop_sound(the_big_show_m)
	audio_play_sound(snd_BOSS_Explosion,10,false)
	audio_play_sound(snd_diebeatrice,10,false)
}}