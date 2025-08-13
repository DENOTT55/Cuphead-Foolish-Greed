if keyboard_check(global.kup)
{
    image_alpha = 1
}
else
{
    image_alpha = 0.5
}

if mouse_check_button(mb_right) and CONFIG
{
    X = device_mouse_x_to_gui(0)
    Y = device_mouse_y_to_gui(0)
}

//virtual_key_show(global.abA)

