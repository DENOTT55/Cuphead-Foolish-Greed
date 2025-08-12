if vulnerable == 0
{
	layer_set_visible("shakefx",true)
	alarm_set(10,10)
	audio_play_sound(snd_cuphead_damage,11,false,1,0,random_range(0.7,1.3))
	vulnerable = 1
	image_alpha = 0.4
	vida += 1
	alarm_set(11,inv)
}

vspeed = -15