x = obj_wendy02.x
y = obj_wendy02.y

if (place_meeting(x, y, obj_parryhitbox))
if parryable == 1{
	instance_create_depth(x-64,y-124,0,obj_parry_particle)
	obj_cuphead_plane.cards += 1
	audio_play_sound(snd_cuphead_parry,10,false,random_range(0.8,1))
	obj_wendy02.unblock()
	instance_destroy()
}