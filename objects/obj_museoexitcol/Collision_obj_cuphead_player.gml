if act == 0 {
	instance_create_depth(x,y,-1,obj_saving_symbol)
	act = 1	
	obj_cuphead_player.enable = 0
	alarm_set(0,30)
}