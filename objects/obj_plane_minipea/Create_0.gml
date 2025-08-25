hspeed = 10
image_xscale = 0.5
image_yscale = 0.5
x += random_range(-3,3)
y += random_range(-6,6)
alarm_set(0,random_range(4,10))
audio_play_sound(snd_cupheadplane_shot,10,false,0.6,0,random_range(1.4,1.6))
alarm_set(1,6)