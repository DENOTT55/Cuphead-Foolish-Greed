if (!place_meeting(x, y + 1, obj_collision))
    {
        gravity = 0.2
		gravity_direction = -90
	}	else	{
		gravity = 0
		}
		
if act == 4 {
	if vspeed > 0{
	if (place_meeting(x, y + 124, obj_collision)){
		act = 5
		image_index = 0
		sprite_index = spr_pala_caer
		image_speed = 1
	if hspeed < 0{
		hspeed = -2
	}
	if hspeed > 0{
		hspeed = 2	
	}
	}
}}

if act == 1 {
	if distance_to_object(obj_cuphead_player) < 480
	{
		act = 2	
		alarm_set(0,45)
}}

if act == 3{
	if hspeed < 0{
		hspeed -= 0.1
		image_speed += 0.05
	}
	if hspeed > 0{
		hspeed += 0.1	
		image_speed += 0.05
	}
}

