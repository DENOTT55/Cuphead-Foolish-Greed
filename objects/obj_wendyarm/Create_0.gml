x = 736
y = 512
image_speed = 1 
hspeed = -4

if random(2) > 1{
	image_yscale = -1	
	y = -172
}

if random(3) > 2{
	sprite_index = spr_wendyarm02
	if image_yscale = 1{
	instance_create_depth(x,y-277,depth-1,obj_whand)
	}
	if image_yscale = -1{
	instance_create_depth(x,y+277,depth-1,obj_whand)
	}
}