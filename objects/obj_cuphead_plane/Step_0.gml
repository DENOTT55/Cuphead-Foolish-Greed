if enable == 1 {
hInput = keyboard_check(global.kright) - keyboard_check(global.kleft);
vInput = keyboard_check(global.kdown) - keyboard_check(global.kup);


if(hInput != 0 or vInput != 0){
	dir = point_direction(0,0,hInput,vInput);
		x += hInput * spd;
		y += vInput * spd;
}

if estado == 0{
if keyboard_check(global.kup) or keyboard_check(global.kdown){		
if dir > 35 && dir < 145 {
	sprite_index = spr_cplane_1	
}	
else	
{
if dir > 215 && dir < 325 {
	sprite_index = spr_cplane_2
}	
else
{
	sprite_index = spr_cplane
}}}
else	{
	sprite_index = spr_cplane
}
}

if parrydelay == 0{
if estado == 0{
	if keyboard_check_pressed(global.kjump){
		estado = 1
		sprite_index = spr_cplane_parry
		image_speed = 2
		instance_create_layer(x,y,"Instances",obj_parryhitbox)
		parrydelay = 1
		alarm_set(1,45)
	}
}}

if parrydelay == 0 {
if estado == 0{
if cards >= 1{
if keyboard_check_pressed(global.kex){
	cards -= 1
	estado = 1
	sprite_index = spr_cplane_parry
	instance_create_depth(x+16,y,-1,obj_plane_pea_1)
}}}}}

if enable == 1{
if vida > 2 {
	enable = 0
	image_alpha = 0
	layer_enable_fx("dark_effect",true)
	instance_create_depth(x,y,-1,obj_die_screen)
	shotting = 0
	vspeed = 0
	hspeed = 0
	audio_play_sound(snd_cuphead_die,11,false,1,0,random_range(0.8,1.2))
	instance_create_layer(x,y,layer,obj_cup_soul)
	CupheadIsDeathControls()
	global.muertes += 1

}}

if enable == 0 {
	image_alpha = 0	
}

if cards > 5{
cards = 5	
}