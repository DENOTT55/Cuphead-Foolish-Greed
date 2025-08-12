draw_sprite_ext(spr_textbox,image_index,x+2,y+2,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_self()
	draw_set_font(dialogue_font)
	draw_set_color($373334)
if line == 0 {	
	draw_text(x-231,y-92,"Las deudas de tu abuelo\nno se iban a pagar solas")}	
if line == 1 {	
	draw_text(x-231,y-92,"Pero puedes ayudarlo- es\nsencillo")}
if line == 2 {	
	draw_text(x-231,y-92,"Solo traeme estas reliquias\nque le pertenecen a\nmi gente")}
if line == 3 {	
	draw_text(x-231,y-92,"Estan en una isla cercana y\nmis muchachos te esperan\ncon un bote")}
if line == 4 {	
	draw_text(x-231,y-92,"Sencillo- no?")}
	