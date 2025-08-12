if act == 0 {
	image_angle = point_direction(x,y,obj_cuphead_plane.x,obj_cuphead_plane.y)	
}

if act == 0{
if obj_cuphead_plane.x < x {
	image_yscale = -1
}	else	{
	image_yscale = 1	
}
}

if obj_wendy02.act == 6	{
	instance_destroy()
}