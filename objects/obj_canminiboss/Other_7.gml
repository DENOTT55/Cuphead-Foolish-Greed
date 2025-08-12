if act == 2 {
		image_index = 4
		image_speed = 0
		act = 3
		alarm_set(1,30)
}

if sprite_index == spr_canminiboss_hideatk {
instance_create_depth(x,y,-1,obj_garbage_prop)	
if (random(10) >=8){
	instance_create_depth(x,y,-1,obj_garbage_parryable)
}
}