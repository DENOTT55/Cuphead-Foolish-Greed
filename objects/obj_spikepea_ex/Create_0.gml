image_speed = 0.30
direction = global.aim
image_angle = direction
hp = 5
speed = 10
instance_create_depth(x,y,1,obj_particle_shot)
if (random(2) >= 1){
	audio_play_sound(snd_cuphead_ex_01,10,false,random_range(0.8,1))
}	else	{
	audio_play_sound(snd_cuphead_ex_02,10,false,random_range(0.8,1))	
}
