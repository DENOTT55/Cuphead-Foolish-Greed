
switch (global.JOYSTICKACTIVE) {
    case true:
        global.JOYSTICKACTIVE = false
		image_index = 0
    break;
	
	case false:
        global.JOYSTICKACTIVE = true
		image_index = 1
    break;
}

audio_play_sound(snd_weaponmenu_clic,5,false,0.5,0,random_range(0.8,1.2))