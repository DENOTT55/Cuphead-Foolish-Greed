if global.PAUSEGAME = true{exit}

if t > 0
{
    draw_set_alpha(alpha)
    draw_sprite(sAndroidMove,0,joyAncorX,joyAncorY)
    draw_sprite(sAndroidMove,1,joyAncorX+joyMoveX,joyAncorY+joyMoveY)
    draw_set_alpha(1)
}
/*
TextSimple(joyAncorX,joyAncorY,"X"+string(joyMoveX))
TextSimple(joyAncorX,joyAncorY+20,"Y"+string(joyMoveY))

/* */
/*  */
