if nattack != 4{
audio_play_sound(snd_hmclown,10,false,1,0,random_range(0.7,1.1))
if die == 0 {
image_yscale = 0.9
image_xscale = 1.1
sprite_index = hold
image_speed = 0.40
act = 3
alarm_set(5,60)

if nattack == 3{	
	instance_create_depth(x,y,-2,obj_claxon)
}}}

if nattack == 4{
	image_yscale = 0.7
	image_xscale = 1.3
	sprite_index = clone
	alarm_set(5,60)
}