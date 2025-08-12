if (!place_meeting(x, y + 1, obj_collision))
    {
        gravity = 0.5
		gravity_direction = -90
	}	else	{
		gravity = 0}
		
if act == 0 {
	if distance_to_object(obj_cuphead_player) < 400{
		act = 1	
		if obj_cuphead_player.x < x{
		hspeed = -2
		image_xscale = 1}
		if obj_cuphead_player.x > x{
		hspeed = 2
		image_xscale = -1}
		alarm_set(0,10)
	}
}