draw_sprite_ext(spr_textbox,image_index,x+2,y+2,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_self()
	draw_set_font(dialogue_font)
	draw_set_color($373334)
if line == 0 {	
	draw_text(x-231,y-92,"Soy una taza,")}	
if line == 1 {	
	draw_text(x-231,y-92,"una tetera")}
if line == 2 {	
	draw_text(x-231,y-92,"una cuchara ")}
if line == 3 {	
	draw_text(x-231,y-92,"y")}
if line == 4 {	
	draw_text(x-231,y-92,"un cucharon...")}
	