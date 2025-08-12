move_bounce_all(true);
hp -= 1

if hp < 1{
	instance_create_depth(x,y,-1,obj_walk_smoke_particle)	
	instance_destroy()
	audio_play_sound(snd_smallpop,10,false,0.8,0,random_range(0.7,1.1))
}	else	{
	audio_play_sound(snd_ballonknife,10,false,1,0,random_range(0.7,1.1))	
}

image_xscale = 0.6
image_yscale = 1.4