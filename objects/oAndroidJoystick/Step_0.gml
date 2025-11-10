/// @description Function

//if global.PAUSEGAME = true{exit}
if os_type = os_windows{exit}

if device_mouse_check_button(0,mb_left)
{
    var mx = device_mouse_x_to_gui(0),
        my = device_mouse_y_to_gui(0);
    
    if (joyActive == false)
    {
        if mx <= display_get_gui_width()/2+40 && my >= display_get_gui_height()/2-200
        {
            joyAncorX = mx
            joyAncorY = my
        }
        joyActive = true
    }
    else
    {
        if mx <= display_get_gui_width()/2+40 && my >= display_get_gui_height()/2-200
        {
            var angle   = point_direction(joyAncorX,joyAncorY,mx,my),
                maxDist = point_distance(joyAncorX,joyAncorY,mx,my);
        
            joyMoveX =  dcos(angle) *  min(95,maxDist)//50
            joyMoveY = -dsin(angle) *  min(95,maxDist)//50
        }
    }
    if mx <= display_get_gui_width()/2+40 && my >= display_get_gui_height()/2-200
    {t = room_speed*1.5}
}else
{
    joyActive = false
    joyMoveX = 0
    joyMoveY = 0
    if t > 0 {t--}
}




