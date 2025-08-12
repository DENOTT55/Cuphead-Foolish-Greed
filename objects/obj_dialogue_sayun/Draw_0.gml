draw_sprite_ext(spr_textbox,image_index,x+2,y+2,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_self()
	draw_set_font(dialogue_font)
	draw_set_color($373334)
if line == 0 {	
	draw_text(x-231,y-92,"Oh! Que curioso!")}	
if line == 1 {	
	draw_text(x-231,y-92,"La vida, oh que buena vida!")}
if line == 2 {	
	draw_text(x-231,y-92,"La has perdido ya "+string(global.muertes)+" veces")}
if line == 3 {	
	draw_text(x-231,y-92,"Tan buena y tan perdida.")}
if line == 4 {	
	draw_text(x-231,y-92,"Oh!")}
	