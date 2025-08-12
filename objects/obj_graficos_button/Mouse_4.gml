if global.graficos == 0{
	global.graficos = 1
	audio_play_sound(snd_weaponmenu_clic,10,false,1,0,random_range(0.8,1.2))
}	else	{
	global.graficos = 0
	audio_play_sound(snd_weaponmenu_clic,10,false,1,0,random_range(0.8,1.2))}
	