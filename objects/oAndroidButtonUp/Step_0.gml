if CONFIG = true
{
	if global.JOYSTICKACTIVE = false
	{image_alpha = global.abAlpha;}
	else
	{image_alpha = 0;}
	
	x = X+(Sx/2);y = Y+(Sy/2)
}
else if keyboard_check(global.kup)
{
    image_alpha = global.abAlpha
}
else
{
    image_alpha = global.abAlpha/2
}

if live = false
{
    image_alpha = 0
}

if CONFIG = true
{
	image_xscale = lerp(image_xscale,ssx,0.3)
	image_yscale = lerp(image_yscale,ssy,0.3)
}
else
{
	image_xscale = ssx
	image_yscale = ssy
}

//virtual_key_show(global.abA)

