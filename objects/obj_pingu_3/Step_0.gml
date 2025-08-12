if (!place_meeting(x, y + 1, obj_collision))
    {
        gravity = 0.5
		gravity_direction = -90
	}	else	{
		gravity = 0}

if distance_to_object(obj_pingu_02) < 100{		
if act == 0 {
	if distance_to_object(obj_pingu_02) > distance{
		act = 1	
		if obj_pingu_02.x < x{
		hspeed = -2
		image_xscale = 1}
		if obj_pingu_02.x > x{
		hspeed = 2
		image_xscale = -1}
		alarm_set(0,10)
	}
}}
else
{
	if act <= 2{
	act = 3
	sprite_index = spr_pingu_3
	image_speed = 0}
}

if act == 3 && distance_to_object(obj_cuphead_player) < 350 {
	sprite_index = spr_pingu_3
	image_index = 0
	image_speed = 0
	act = 4
	alarm_set(2,70)
}
