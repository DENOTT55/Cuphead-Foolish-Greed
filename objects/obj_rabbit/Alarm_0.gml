act = 2
image_index = 2
if obj_cuphead_player.x > x{
	image_xscale = -1
}

if obj_cuphead_player.x <x{
	image_xscale = 1
}
if image_xscale == 1{
	vspeed = -6
	hspeed = -3
}
if image_xscale ==	-1{
	vspeed = -6
	hspeed = 3
}