draw_sprite_ext(spr_textbox,image_index,x+2,y+2,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_self()
	draw_set_font(dialogue_font)
	draw_set_color($373334)
if line == 0 {	
	draw_text(x-231,y-92,"When haces tu momos en\ndialogo:")}	
if line == 1 {	
	draw_text(x-231,y-92,"el futuro es hoy oiste\nviejo :v")}
if line == 2 {	
	draw_text(x-231,y-92,"But te terminan echado del\nequipo por inutil:")}
if line == 3 {	
	draw_text(x-231,y-92,"ohh mi lente de contacto :'v")}