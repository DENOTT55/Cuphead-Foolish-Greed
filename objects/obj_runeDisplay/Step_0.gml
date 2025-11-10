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
			obj_cuphead_player.enable = 0
			obj_camerapoint.runeMenu = true
			obj_camerapoint.alarm[0] = 15
			}
		}
	}
	
}

if (keyboard_check_pressed(global.kpause)||keyboard_check_pressed(vk_escape))
		{	
			with (obj_camerapoint) {
			runeMenu = false
			canAct = false
			
			order = 0
			runeSlot[0] = -1
			runeSlot[1] = -1
			runeSlot[2] = -1
			runeSlot[3] = -1
			runeSlot[4] = -1
		
			rune[0] = runePos[0]
			rune[1] = runePos[1]
			rune[2] = runePos[2]
			rune[3] = runePos[3]
			rune[4] = runePos[4]
			}
			act = 0
			obj_cuphead_player.enable = 1
			obj_cuphead_player.enable = 1
			obj_cuphead_player.enable = 1
			obj_cuphead_player.enable = 1
			obj_cuphead_player.enable = 1
			obj_cuphead_player.enable = 1
		}

image_yscale = base_scale + sin(current_time * bounce_speed) * bounce_strength;