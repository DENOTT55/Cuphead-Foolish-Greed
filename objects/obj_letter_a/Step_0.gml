if instance_number(obj_worldmap_cuphead) == 1{
if distance_to_object(obj_worldmap_cuphead) < 16
{
	if image_xscale != 1
	{
		image_xscale += 0.2	
		image_yscale += 0.2
	}
}	
if	distance_to_object(obj_worldmap_cuphead) > 16{
	if image_xscale > 0
	{
		image_xscale -= 0.2	
		image_yscale -= 0.2			
	}	else	{
		instance_destroy()
	}
}}

if instance_number(obj_cuphead_player) == 1{
if distance_to_object(obj_cuphead_player) < 16
{
	if image_xscale != 1
	{
		image_xscale += 0.2	
		image_yscale += 0.2
	}
}	
if	distance_to_object(obj_cuphead_player) > 16{
	if image_xscale > 0
	{
		image_xscale -= 0.2	
		image_yscale -= 0.2			
	}	else	{
		instance_destroy()
	}
}}
depth = -100