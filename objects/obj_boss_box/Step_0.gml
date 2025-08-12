if act == 1 {
	sprite_index = spr_boss_box_shaking
	hspeed = -8
	act = 2
	image_speed = 1
	alarm_set(0,90) //transformar
	alarm_set(1,45) //Dejar quieto a cuphead
	instance_destroy(obj_rabbit)
	if distance_to_object(obj_cuphead_player) < 64{
		obj_cuphead_player.hspeed -= 8
		obj_cuphead_player.vspeed = -8	
	}
}
if act == 2{
	if hspeed < 0
	{
		hspeed += 0.5
	}
}
