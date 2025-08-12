if act == 0{
if distance_to_object(obj_cuphead_player) < 200{
	act = 1	
	alarm_set(0,random_range(60,80))
}}

if act == 2{
	if (random(7) > 6){
		instance_create_depth(x+random_range(-70,70),y-156,depth-1,obj_pine_proyectile)}
}