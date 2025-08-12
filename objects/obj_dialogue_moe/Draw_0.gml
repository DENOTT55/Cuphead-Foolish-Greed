draw_sprite_ext(spr_textbox,image_index,x+2,y+2,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_self()
	draw_set_font(dialogue_font)
	draw_set_color($373334)
if line == 0 {	
	draw_text(x-231,y-92,"Eh! Que te trae?")}	
if line == 1 {	
	draw_text(x-231,y-92,"Estaba viendo por estos\nlados")}
if line == 2 {	
	draw_text(x-231,y-92,"La ubicacion esta perfecta")}
if line == 3 {	
	draw_text(x-231,y-92,"Levantar un museo aqui...")}
if line == 4 {	
	draw_text(x-231,y-92,"Quiza?")}
	