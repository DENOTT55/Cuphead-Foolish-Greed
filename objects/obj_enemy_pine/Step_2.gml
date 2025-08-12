if (!place_meeting(x, y + 1, obj_collision))
    {
        gravity = 0.5
		gravity_direction = -90
	}	else	{
		gravity = 0
		}
		
if act == 1	{
	if distance_to_object(obj_cuphead_player) < 300{
	act = 2
	alarm_set(0,random_range(30,40))}
}

if act == 3{
if (place_meeting(x+5,	y, obj_collision))
    {	image_yscale = 0.9
		image_xscale = 1.1
		hspeed = -3}

if (place_meeting(x-5,	y, obj_collision))
    {	image_yscale = 0.8	
		image_xscale = 1.2
		hspeed = 3}
}