if speed > 5{
	speed -= 0.5
	}
	
if (place_meeting(x, y, obj_parryhitbox))
if parryable == 1{
	instance_create_depth(x,y,0,obj_parry_particle)
	obj_cuphead_plane.cards += 1
	audio_play_sound(snd_cuphead_parry,10,false,random_range(0.8,1))
	instance_destroy()
}