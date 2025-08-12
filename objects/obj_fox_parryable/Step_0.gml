if image_xscale = 1{
	hspeed += -0.1
}

if image_xscale = -1{
	hspeed += 0.1
}

if dis == 0{
	if image_alpha < 1{
	image_alpha	+= 0.1
	}
}

if dis == 1{
	if image_alpha > 0{
	image_alpha	-= 0.05
	}	else	{
	instance_destroy()	
	}
}

if (place_meeting(x, y, obj_parryhitbox)){
	instance_create_depth(x,y,-1,obj_parry_particle)
	obj_cuphead_player.vspeed = -12
	obj_cuphead_player.estado = 2
	obj_cuphead_player.cards += 1
	audio_play_sound(snd_cuphead_parry,10,false,random_range(0.8,1))
	instance_destroy()
}