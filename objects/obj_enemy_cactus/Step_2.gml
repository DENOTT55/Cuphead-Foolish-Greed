if (!place_meeting(x, y + 1, obj_collision))
    {
        gravity = 0.5
		gravity_direction = -90
	}	else	{
		gravity = 0
// DETECTAR CHOQUE HORIZONTAL	
if (place_meeting(x+2, y, obj_collision))
{
	hspeed = -2
	image_xscale = 1	
}

if (place_meeting(x-2, y, obj_collision))
{
	hspeed = 2
	image_xscale = -1	
}
	}

if vspeed > 12
	{
		vspeed = 12	
	}

// PARRY

if (place_meeting(x, y, obj_parryhitbox))
if parryable == 1{
	instance_create_depth(x,y-56,0,obj_parry_particle)
	
	parryable = 0
	sprite_index = spr_cactus_running
	obj_cuphead_player.vspeed = -12
	obj_cuphead_player.estado = 2
	hp = 1
	obj_cuphead_player.cards += 1
	audio_play_sound(snd_cuphead_parry,10,false,random_range(0.8,1))
}