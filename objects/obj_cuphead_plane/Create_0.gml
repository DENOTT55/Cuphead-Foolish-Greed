image_speed = 4
spd = 3.5
dir = 0
cards = 0 // Cartas disponibles para hacer ataques especiales
vulnerable = 0 // Invulnerabilidad al recibir dano
vida = 0; //Vida (Duh)
enable = 1
shotting = 0
shotdelay = 0
estado = 0
parrydelay = 0
inv = 60


if os_type = os_android
{
	vidaX = display_get_gui_width()/2-80; vidaY = 32
	cardsX[0] = display_get_gui_width()/2+30+(25*0)
	cardsX[1] = display_get_gui_width()/2+30+(25*1)
	cardsX[2] = display_get_gui_width()/2+30+(25*2)
	cardsX[3] = display_get_gui_width()/2+30+(25*3)
	cardsX[4] = display_get_gui_width()/2+30+(25*4)
	cardsY = vidaY
	weaponX = display_get_gui_width()/2
	weaponY = 120
}
else
{
	vidaX = 32; vidaY = 646
	cardsX[0] = 120+(25*0)
	cardsX[1] = 120+(25*1)
	cardsX[2] = 120+(25*2)
	cardsX[3] = 120+(25*3)
	cardsX[4] = 120+(25*4)
	cardsY = 646
	weaponX = 60
	weaponY = 620
}


CreateAndroidControls(true)