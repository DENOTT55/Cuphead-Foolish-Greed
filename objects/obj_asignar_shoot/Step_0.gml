if global.asignar == 1{
	if asignar == 1{
		if keyboard_check_released(vk_anykey){
			global.kshoot = keyboard_lastkey
			image_index = 0
			global.asignar = 0
			asignar = 0
			audio_play_sound(snd_weaponmenu_clic,10,false,1,0,random_range(0.8,1.2))
		}
	}
}