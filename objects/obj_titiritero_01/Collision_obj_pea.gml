if die == 0 {
hp -= 1
image_alpha = 0.6
alarm_set(11,4)

if hp < 1 {
	die = 1
	vspeed = 0
	hspeed = 0
	sprite_index = spr_boss01_transition
	image_speed = 0.70
	alarm_set(6,80)
	nattack = 0
	audio_play_sound(snd_clowndie,10,false,1.4,0,random_range(0.7,1.1))
}}