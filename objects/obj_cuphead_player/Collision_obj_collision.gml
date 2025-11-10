if keyboard_check(global.kdown){
	vspeed = 0	
	hspeed = 0
	move_contact_solid(-90,12)
	estado = 7
	sprite_index = spr_cupcrouch
}
else	{
if estado != 3{
move_contact_solid(-90,12)
if !place_free(x,y+2) {coyote = 0}
vspeed = 0
estado = 0
sprite_index = spr_cupidle
image_speed = 0.15
}	else	{
hspeed = 0
move_contact_solid(direction,-12)
}}
