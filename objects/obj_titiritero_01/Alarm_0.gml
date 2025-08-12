image_yscale = 0.9
image_xscale = 1.1
image_alpha = 1
instance_create_depth(x,y,-10,obj_smoke_bomb_particle)
audio_play_sound(snd_clownsmoke,10,false,1,0,random_range(0.7,1.1))
alarm_set(1,140)