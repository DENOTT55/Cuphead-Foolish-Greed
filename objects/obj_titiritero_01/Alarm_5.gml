if die == 0 {
image_yscale = 0.8
image_xscale = 1.2
act = 4
if nattack == 1{	
	sprite_index = spr_boss01_atk
	instance_create_depth(x,y,-2,obj_dague)
}

if nattack == 2{	
	sprite_index = spr_boss01_atk
	instance_create_depth(x,y,-2,obj_hat)
}

if nattack == 2{	
	sprite_index = spr_boss01_atk
}

if nattack == 4{
	image_alpha = 0
	x = random_range(202,472)	
	instance_create_layer(random_range(202,472),y,"Instances", obj_clone_titiritero)
	instance_create_layer(random_range(202,472),y,"Instances", obj_clone_titiritero)
}

nattack = 0}