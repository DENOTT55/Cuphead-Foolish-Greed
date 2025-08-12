if dis == 0{ 
if image_xscale < 1
{
	image_xscale += 0.1	
	image_yscale += 0.1
}}
if dis == 1{ 
if image_xscale > 0
{
	image_xscale -= 0.1	
	image_yscale -= 0.1
}	else	{
camera_set_view_speed(view_camera[0],-1,-1)
obj_moe_npc.act = 0
obj_moe_npc.image_index = 0
obj_worldmap_cuphead.enable = 1
instance_destroy()
}}

if keyboard_check_pressed(global.kjump){
line +=1
//FINALIZAR DIALOGO//
if line == 5{
	dis = 1
	camera_set_view_target(view_camera[0], obj_worldmap_cuphead);

}
}