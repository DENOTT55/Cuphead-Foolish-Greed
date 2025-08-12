x = x + random_range(-1,1)
y= y+ random_range(-1,1)
image_speed = 1
direction = global.aim
image_angle = direction
hp = 2
speed = 8
alarm_set(0,30)
if (random(2) >= 1){
	audio_play_sound(snd_cuphead_peashot_01,10,false,random_range(0.8,1))
}	else	{
	audio_play_sound(snd_cuphead_peashot_02,10,false,random_range(0.8,1))	
}
