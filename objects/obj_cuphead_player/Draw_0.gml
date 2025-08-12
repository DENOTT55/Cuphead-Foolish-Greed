if shotting == 0{ //SI EL PLAYER DISPARA

// Si encontramos un sólido, dibujamos la sombra en esa posición
if (place_meeting(x, shadow_y, obj_collision)) {
    // Dibujar el sprite de sombra en la posición detectada
    draw_sprite_ext(spr_shadowsmall, 0, x, shadow_y, 1, 1, 0, c_white, 0.2);
}	

if estado == 0{
	draw_self()
	draw_sprite_ext(spr_cuparmsidle,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
}

if estado == 1{
	draw_self()
	draw_sprite_ext(spr_cuparmswalk,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
}

if estado == 2{
	draw_self()
}

if estado == 3{
	draw_self()
}

if estado == 4{
	draw_self()
}
if estado == 5{
	draw_self()
}
if estado == 6{
	draw_self()
}
if estado == 7{
	draw_self()
}
}	else	{ // SI EL PLAYER NO DISPARA
	
// Si encontramos un sólido, dibujamos la sombra en esa posición
if (place_meeting(x, shadow_y, obj_collision)) {
    // Dibujar el sprite de sombra en la posición detectada
    draw_sprite_ext(spr_shadowsmall, 0, x, shadow_y, 1, 1, 0, c_white, 0.2);
}	

if estado == 0{	
	if image_xscale = 1{
	draw_sprite_ext(spr_cuparmshot1,shothandframe,x,y,1,1,global.aim,c_white,image_alpha)}
	else { draw_sprite_ext(spr_cuparmshot1,shothandframe,x,y,1,-1,global.aim,c_white,image_alpha)}
	draw_self()
	draw_sprite_ext(spr_cuparmshot2,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
}

if estado == 1{
	if image_xscale = 1{
	draw_sprite_ext(spr_cuparmshot1,shothandframe,x,y,1,1,global.aim,c_white,image_alpha)}
	else { draw_sprite_ext(spr_cuparmshot1,shothandframe,x,y,1,-1,global.aim,c_white,image_alpha)}
	draw_self()
	draw_sprite_ext(spr_cuparmshot2,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
}

if estado == 2{
	draw_self()
}

if estado == 3{
	draw_self()
}

if estado == 4{
	draw_self()
}
if estado == 5{	
	draw_self()
}
if estado == 6{
	draw_self()
}
if estado == 7{
	draw_self()
}
}