
draw_sprite_ext(spr_reward_bg,0,view_get_wport(0)/2-bgXoffset,80,bgXscale,bgYscale,0,image_blend,bgAlpha)

draw_set_alpha(TXTalpha);draw_set_font(level_letter_font);draw_set_colour(c_black);
draw_text(view_get_wport(0)/2-(bgXoffset/2),30,txt)
draw_set_font(level_letter_font_1)
draw_text(view_get_wport(0)/2-(bgXoffset/2),70,SUBtxt)
draw_set_alpha(1);draw_set_colour(c_white);

draw_sprite_ext(sprite_index,image_index,view_get_wport(0)/2+X,80,image_xscale,image_yscale,image_angle,image_blend,image_alpha)


draw_sprite_ext(sprite_index,0,view_get_wport(0)/2,80,image_xscale,image_yscale,image_angle,image_blend,alpha)
