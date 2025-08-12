x = x + random_range(-1,1)
y= y+ random_range(-1,1)
image_speed = 0.30
direction = global.aim
image_angle = direction
hp = 1
speed = 13
instance_create_depth(x,y,1,obj_particle_shot)
if (random(2) >= 1){
	audio_play_sound(snd_cuphead_peashot_01,10,false,random_range(0.8,1))
}	else	{
	audio_play_sound(snd_cuphead_peashot_02,10,false,random_range(0.8,1))	
}
if vspeed = 0{
vspeed = random_range(-0.2,0.2)}
