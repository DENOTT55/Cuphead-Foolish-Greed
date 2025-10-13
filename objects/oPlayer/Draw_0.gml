/// @description Draw
//draw_self()
SpriteAnimationControl()

image_xscale = lerp(image_xscale,Xscale,0.5)
image_yscale = lerp(image_yscale,Yscale,0.5)

draw_sprite_ext(sPlayerShadow,8,x,y,side,image_yscale,0,c_white,image_alpha)

draw_sprite_ext(spr,frameIndex,x,y,side,image_yscale,0,c_white,image_alpha)

draw_set_colour(c_black);draw_set_halign(fa_center);draw_set_valign(fa_middle)
if t>0
{
    draw_sprite_ext(sTimeBar,0,x,y-200,1.2,1.2,0,c_black,1)
    if state = "fixing"
    {
        draw_sprite_ext(sTimeBar,0,x,y-200,(t*0.5)/154,1,0,c_white,1)
        TextSimple(x,y-200,t/room_speed)
    }
    else
    {
        draw_sprite_ext(sTimeBar,0,x,y-200,(t*0.1),1,0,c_white,1)
        TextSimple(x,y-200,t)
    }
}
draw_set_colour(c_white)

/*DEBUG
draw_set_colour(c_black)
//draw_text(x,y-90,state)
draw_text(x,y-60,"itemID: "+string(itemID))
//draw_text(x,y-30,"frame: "+string(frameIndex))
draw_set_colour(c_white)

/* */
/*  */
