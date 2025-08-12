if act == 0{
if distance_to_object(obj_cuphead_player) < 560{
	act = 1	
	
	if obj_cuphead_player.x < x{
		hspeed = -4
		image_xscale = 1
	}	else	{
		hspeed = 4
		image_xscale = -1
	}
}}

if act == 1{
	if obj_cuphead_player.x > x-64 && obj_cuphead_player.x < x+64{
		hspeed = 0
		act = 2
		sprite_index = spr_zancudo
		instance_create_depth(x,y+16,depth-1,obj_navez)
	}
}

if act == 2{
	vspeed -= 0.1
}