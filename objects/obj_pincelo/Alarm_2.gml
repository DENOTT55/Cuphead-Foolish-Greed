hspeed = 0
act = 1
sprite_index = spr_pincel_walk
image_speed=0.80
alarm_set(0,random_range(10,140))
if obj_cuphead_player.x > x{
	image_xscale = -1
}

if obj_cuphead_player.x <x{
	image_xscale = 1
}