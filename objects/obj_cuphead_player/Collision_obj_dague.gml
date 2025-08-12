if vulnerable == 0
{
	layer_set_visible("shakefx",true)
	alarm_set(10,10)
	audio_play_sound(snd_cuphead_damage,10,false)	
	vulnerable = 1
	image_alpha = 0.6
	vida += 1
	alarm_set(11,inv)
}