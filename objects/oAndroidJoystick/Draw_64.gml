//if global.PAUSEGAME = true{exit}

if t > 0
{
    draw_set_alpha(alpha)
    draw_sprite(sAndroidMove,0,joyAncorX,joyAncorY)
    draw_sprite(sAndroidMove,1,joyAncorX+joyMoveX,joyAncorY+joyMoveY)
    draw_set_alpha(1)
}
/*
draw_text(joyAncorX,joyAncorY,"X"+string(joyMoveX))
draw_text(joyAncorX,joyAncorY+20,"Y"+string(joyMoveY))

/* */
/*  */
