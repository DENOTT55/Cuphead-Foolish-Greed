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
obj_cuphead_player.enable = 1
instance_destroy()
}}

if keyboard_check_pressed(global.kjump){
line +=1
//FINALIZAR DIALOGO//
if line == 5{
	dis = 1
	obj_npc_domino.alarm[1] = 2
}}