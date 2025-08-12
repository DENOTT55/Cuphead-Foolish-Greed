if entrance == 0{
draw_sprite_ext(spr_youdied_letter,0,0+80,0,2,2,0,c_white,1)}

draw_sprite_ext(spr_die_screen,image_index,+640,+360,1.7,1.7,0,c_white,image_alpha)
draw_set_color(c_black)
draw_set_font(level_letter_font)
draw_text_color(509,544,chr(global.kjump),c_black,c_black,c_black,c_black,image_alpha)
draw_text_color(522,598,chr(global.kshoot),c_black,c_black,c_black,c_black,image_alpha)

if room == rm_monte_cao_tic{
draw_sprite_ext(spr_rungun_dead_screen,0,+640,+218,1.7,1.7,0,c_white,image_alpha)
draw_set_color(c_black)
draw_set_font(dead_screen_font)
draw_text_color(+452,+368,"''Mejores pocillos han humillado por aqui!''",c_black,c_black,c_black,c_black,image_alpha)
draw_sprite_ext(spr_cuphead_dead_screen,0,csiluette,+504,1,1,0,c_white,image_alpha)
}

if room == rm_el_titiritero{
draw_sprite_ext(spr_eltitiretero_dead_screen,0,+640,+218,1.7,1.7,0,c_white,image_alpha)
draw_set_color(c_black)
draw_set_font(dead_screen_font)
draw_text_color(+452,+368,"''Son cuchillos hechos de globo, como es\nque perdiste?''",c_black,c_black,c_black,c_black,image_alpha)
draw_sprite_ext(spr_cuphead_dead_screen,0,csiluette,+504,1,1,0,c_white,image_alpha)
}

if room == rm_wendy_the_wendingo{
draw_sprite_ext(spr_wendy_dead_screen,0,+640,+218,1.7,1.7,0,c_white,image_alpha)
draw_set_color(c_black)
draw_set_font(dead_screen_font)
draw_text_color(+452,+368,"''Hoy no tenia pensado desayunar con cafe''",c_black,c_black,c_black,c_black,image_alpha)
draw_sprite_ext(spr_cuphead_dead_screen,0,csiluette,+504,1,1,0,c_white,image_alpha)
}

if room == rm_bosque_helado{
draw_sprite_ext(spr_rungun2_dead_screen,0,+640,+218,1.7,1.7,0,c_white,image_alpha)
draw_set_color(c_black)
draw_set_font(dead_screen_font)
draw_text_color(+452,+368,"''Quedaste frio, eh?''",c_black,c_black,c_black,c_black,image_alpha)
draw_sprite_ext(spr_cuphead_dead_screen,0,csiluette,+504,1,1,0,c_white,image_alpha)
}