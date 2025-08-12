image_yscale = 0.8
image_xscale = 1.2
act = 3
sprite_index = spr_pine_walk
if	obj_cuphead_player.x > x{
	hspeed = 2 + hp
	alarm_set(1,45)
}	else	{
	hspeed = -2 + hp*-1
	alarm_set(1,45)
}		
image_speed = 0.50 * hp+1