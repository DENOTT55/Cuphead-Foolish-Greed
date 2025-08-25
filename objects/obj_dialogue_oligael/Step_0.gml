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
obj_oligael.act = 0
obj_cuphead_player.enable = 1
obj_cuphead_player.hspeed = 0
obj_cuphead_player.sprite_index = spr_cupidle
obj_cuphead_player.image_speed = 0.10
obj_cuphead_player.estado = 0
camera_set_view_speed(view_camera[0],-1,-1)
instance_destroy()
}}

if keyboard_check_pressed(global.kjump){
line +=1
//FINALIZAR DIALOGO//
if line == 1{
	dis = 1
	camera_set_view_target(view_camera[0], obj_cuphead_player);
}}