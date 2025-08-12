direction = point_direction(x,y,obj_cuphead_player.x,obj_cuphead_player.y)
speed = random_range(2,4)
alarm_set(0,10)
parry = 0
image_speed = 0

if random(3) > 2{
	parry = 1
	image_index = 1
}	else	{
	parry = 0
	image_index = 0
}
