draw_self()
draw_set_font(level_letter_font)
if global.kjump == vk_right{
	draw_sprite(spr_flechas_direccion, 0, x, y)
}	else 
if global.kjump == vk_left{
	draw_sprite(spr_flechas_direccion, 1, x, y)
}	else
if global.kjump == vk_down{
	draw_sprite(spr_flechas_direccion, 2, x, y)
}	else
if global.kjump == vk_up{
	draw_sprite(spr_flechas_direccion, 3, x, y)
}	else	
if global.kjump == vk_space{
	draw_sprite(spr_flechas_direccion, 4, x, y)
}	else
if global.kjump == vk_shift{
	draw_sprite(spr_flechas_direccion, 5, x, y)	
}	else	{
	draw_text(x-9,y-22, chr(global.kjump))	
}

draw_set_font(dialogue_font)
draw_text(x-32,y-52,"Saltar")