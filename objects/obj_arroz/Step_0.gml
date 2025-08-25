if obj_cuphead_player.enable == 1{
if act == 0{
	if distance_to_object(obj_cuphead_player) < 16
	{	
		if instance_number(obj_letter_a) == 0{
			instance_create_depth(x,y,-100, obj_letter_a)}
		if keyboard_check_pressed(global.kjump)
		{
			instance_destroy(obj_letter_a)
			act = 1
			instance_create_depth(x-16, y-56, -100, obj_dialogue_arroz)
			if obj_cuphead_player.x > x
			{
				image_xscale = 1	
			}	else	{	image_xscale = -1	}
		}
	}
}	}
image_yscale = base_scale + sin(current_time * bounce_speed) * bounce_strength;