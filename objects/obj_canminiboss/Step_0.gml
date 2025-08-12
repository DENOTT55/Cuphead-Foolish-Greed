if (!place_meeting(x, y + 1, obj_collision))
    {
        gravity = 0.4
		gravity_direction = -90
	}	else	{
		gravity = 0
	}

if vspeed > 12
	{
		vspeed = 12	
	}

else

{
	vspeed = 0	
	gravity = 0
}