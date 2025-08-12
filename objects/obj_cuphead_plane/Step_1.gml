if enable == 1{
if keyboard_check(global.kshoot){
	shotting = 1	
}	else	{
	shotting = 0	
}

if estado == 0{
if shotdelay == 0{
if keyboard_check(global.kshoot){
	shotdelay = 1	
	instance_create_depth(x+38,y+6,depth-1,obj_walk_smoke_particle)
	instance_create_depth(x+28,y+6,depth,obj_plane_pea)
	alarm_set(0,10)
}}}}

