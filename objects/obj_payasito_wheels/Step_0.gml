if act == 0{
	if hspeed < 2{
		hspeed += 0.2	
	}
}	else	{
	if hspeed > -2{
		hspeed -= 0.2	
	}	
}

if parryable == 1{
if (place_meeting(x, y, obj_parryhitbox)){
	instance_create_depth(x,y,-1,obj_parry_particle)
	obj_cuphead_player.vspeed = -12
	obj_cuphead_player.estado = 2
	obj_cuphead_player.cards += 1
	audio_play_sound(snd_cuphead_parry,10,false,random_range(0.8,1))
	instance_destroy()
}}