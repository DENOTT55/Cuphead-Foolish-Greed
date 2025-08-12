if global.flores == 1{
	active = 1
	image_alpha = 1
}
if global.flores >= 1{
if distance_to_object(obj_worldmap_cuphead) < 12{
	dis = 1	
}
if dis == 1{
	image_xscale -= 0.05	
	image_yscale -= 0.05
	if image_xscale < 0.1{
		global.flores += 1
		instance_destroy()	
		layer_enable_fx("dark_effect",true)	
		instance_create_layer(x,y,"Menu_Instances", obj_flores_hud)
	}
}
}