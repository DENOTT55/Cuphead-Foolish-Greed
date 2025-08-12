image_speed = 1
hp = 20
hspeed = 2
x += random_range(-3,3)
y += random_range(-6,6)
alarm_set(0,random_range(4,10))
audio_play_sound(snd_cupheadplane_shot,10,false,1,0,random_range(1,1.2))
audio_play_sound(snd_cupheadplane_shot_super,10,false,1,0,random_range(1,1.2))