image_angle +=  5*obj_dralabaza.side
vspeed += 0.3
image_xscale = lerp(image_xscale,1,0.15)
image_yscale = lerp(image_yscale,1,0.15)


if (place_meeting(x, y, obj_parryhitbox)) and image_index = 1{
	obj_dralabaza.state = "dizzy"
	obj_dralabaza.t = 0
	instance_create_depth(x,y,-1,obj_parry_particle)
	obj_cuphead_player.vspeed = -12
	obj_cuphead_player.estado = 2
	obj_cuphead_player.cards += 1
	audio_play_sound(snd_cuphead_parry,10,false,random_range(0.8,1))
	instance_destroy()
}