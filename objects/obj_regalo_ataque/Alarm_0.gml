if (random(2) >= 1) { instance_create_depth(x,y,depth,obj_clown_mob) }
else {
if (random(2) >= 1) {instance_create_depth(x,y,depth,obj_clown_mob_1)}	
else{instance_create_depth(x,y,depth,obj_penny)}}
	

instance_create_depth(x,y,depth-3,obj_big_smoke_particle)
instance_destroy()