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
	if line == 3{
	line = 4
	image_alpha = 0
	sprite_index = 0
	obj_greicy_npc.act = 2
	layer_enable_fx("dark_effect",true)	
	alarm_set(0,110)}
}}

if line == 4{
	if image_alpha < 1{
		image_alpha += 0.1
		{
}}}

if keyboard_check_pressed(global.kjump){
if line < 3{
	line +=1	
}
//FINALIZAR DIALOGO//
if line == 2{
	line = 3
	dis = 1
	camera_set_view_target(view_camera[0], obj_worldmap_cuphead);
	//AQUI VA EL CODIGO QUE DESBLOQUEA EL ARMA CACTUS
	}
}
