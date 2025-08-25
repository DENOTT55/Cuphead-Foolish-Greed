draw_sprite_ext(spr_textbox,image_index,x+2,y+2,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_self()
	draw_set_font(dialogue_font)
	draw_set_color($373334)
if line == 0 {	
	draw_text(x-231,y-92,"Bienvenido al museo!")}	
if line == 1 {	
	draw_text(x-231,y-92,"Tomate tu tiempo para\nadmirar estas obras de arte,")}
if line == 2 {	
	draw_text(x-231,y-92,"son increibles!")}
