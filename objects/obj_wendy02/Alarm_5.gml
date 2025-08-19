instance_create_depth(x,y,depth-1,obj_wendyarm)

if random(5) > 4{
	image_index = 4
	sprite_index = spr_wendy2_atk
	image_speed = -1
	act = 6
}	else	{
alarm_set(4,120)}