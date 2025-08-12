vspeed += 0.4
image_angle += 1

if image_xscale > 0{
	image_xscale -= 0.02
	image_yscale -= 0.02
}

if (place_meeting(x, y + 1, obj_collision))
    {
	if vspeed > 0{
		instance_destroy()
		}
	}