if distance_to_object(obj_worldmap_cuphead) < 16
{
	act = 1
	if instance_number(obj_letter_a) == 0{
		instance_create_layer(x,y,"Layer_Instance_Player", obj_letter_a)}
}	else	{
	act = 0	
}

if keyboard_check_pressed(global.kjump){
if act == 1{
if obj_worldmap_cuphead.enable == 1{
obj_worldmap_cuphead.enable = 0		
act = 2
layer_enable_fx("dark_effect",true)	
instance_create_layer(x,y,"Menu_Instances",obj_the_puppeter_letter)
}}	
}