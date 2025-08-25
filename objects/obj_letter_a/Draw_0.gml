if instance_number(obj_worldmap_cuphead) == 1{
draw_sprite_ext(spr_letter_a,0,obj_worldmap_cuphead.x,obj_worldmap_cuphead.y -48,image_xscale,image_yscale,0,c_white,1)
draw_set_color(c_black)
draw_set_font(level_letter_font_1)
draw_text_color(obj_worldmap_cuphead.x -5,obj_worldmap_cuphead.y -72,chr(global.kjump),c_black,c_black,c_black,c_black,image_xscale)}
else
if instance_number(obj_cuphead_player) == 1{
draw_sprite_ext(spr_letter_a,0,obj_cuphead_player.x,obj_cuphead_player.y -48,image_xscale,image_yscale,0,c_white,1)
draw_set_color(c_black)
draw_set_font(level_letter_font_1)
draw_text_color(obj_cuphead_player.x -5,obj_cuphead_player.y -72,chr(global.kjump),c_black,c_black,c_black,c_black,image_xscale)}