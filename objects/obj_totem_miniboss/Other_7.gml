if act == 22{
	instance_create_depth(x,y,-1,obj_fox_attack)	
	act = 0
	sprite_index = spr_totem_announce
	image_speed = 0
}
if act == 33{
	instance_create_depth(x-58,y+random_range(-148,2),-1,obj_pluma_ataque)	
	instance_create_depth(x-116,y+random_range(-97,2),-1,obj_pluma_ataque)	
	instance_create_depth(x-38,y+random_range(-32,16),-1,obj_pluma_ataque)	
	act = 0
	sprite_index = spr_totem_announce
	image_speed = 0
}
if act == 44{
	instance_create_depth(x,y,-1,obj_rino_attack)	
	act = 0
	sprite_index = spr_totem_announce
	image_speed = 0
}
if act == 2
{
	sprite_index = spr_totem_foxes
	image_speed = 1
	act = 22
}

if act == 3
{
	sprite_index = spr_totem_hawk
	image_speed = 1
	act = 33
}

if act == 4
{
	sprite_index = spr_totem_rino
	image_speed = 1
	act = 44
}