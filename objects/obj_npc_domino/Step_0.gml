if cinematic == 0{
	if distance_to_object(obj_cuphead_player) < 100
	{
		cinematic = 1
		alarm_set(0,90)
		obj_cuphead_player.enable = 0
		obj_cuphead_player.hspeed = 0
		obj_cuphead_player.sprite_index = spr_cupidle
		obj_cuphead_player.image_speed = 0.10
		obj_cuphead_player.estado = 0
	}
}