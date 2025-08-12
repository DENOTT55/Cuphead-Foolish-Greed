move_contact_solid(-90,12)
vspeed = 0
if act != 3{
	hspeed = 0
}
if act == 3{
hspeed = 0
sprite_index = spr_pincelred_walk
act = 1
image_speed=1.20
alarm_set(0,90)
if obj_cuphead_player.x > x{
	image_xscale = -1
}

if obj_cuphead_player.x <x{
	image_xscale = 1
}	
}

