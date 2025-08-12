alarm_set(1,45)
act = 3
if obj_cuphead_player.x < x{
	hspeed = -1
	sprite_index = spr_pala_walk			
	image_xscale = 1
	}	else	{
	hspeed = 1
	sprite_index = spr_pala_walk
	image_xscale = -1
}