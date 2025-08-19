if obj_worldmap_cuphead.y > y{
	depth = obj_worldmap_cuphead.depth + 1	
}	else	{
	depth = obj_worldmap_cuphead.depth - 1	
}

if obj_worldmap_cuphead.enable == 1{
if act == 0{
	if distance_to_object(obj_worldmap_cuphead) < 16
	{	
		if instance_number(obj_letter_a) == 0{
			instance_create_depth(x,y,-100, obj_letter_a)}
		if keyboard_check_pressed(global.kjump)
		{
			instance_destroy(obj_letter_a)
			act = 1
			instance_create_depth(x-16, y-48, -100, obj_dialogue_moe)
			image_index = 1
		}
	}
}	}

if global.ftitiritero == 1 && global.fwendy == 1{instance_destroy()}
image_yscale = base_scale + sin(current_time * bounce_speed) * bounce_strength;
image_xscale = base_scale + cos(current_time * bounce_speed) * bounce_strength;