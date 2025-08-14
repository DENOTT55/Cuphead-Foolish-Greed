if CONFIG = true
{image_alpha = 1;x = X+(Sx/2);y = Y+(Sy/2)}
else if keyboard_check(global.kex)
{
    image_alpha = 1
}
else
{
    image_alpha = 0.5
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

