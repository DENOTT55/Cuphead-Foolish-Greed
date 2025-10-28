coyote = 0
shadow_distance = 160; // Distancia máxima a la que se dibujará la sombra debajo del jugador
shadow_y = y;  // Inicializar si no existe

CreateAndroidControls(true,global.JOYSTICKACTIVE)

// Variables del jugador

cards = 0 // Cartas disponibles para hacer ataques especiales
vulnerable = 0 // Invulnerabilidad al recibir dano
shothandframe = 0;//Variable de velocidad de la mano al disparar
image_speed = 0.15;
global.aim = 0; // Direccion apuntado
velocidad = 4; //Velocidad del Jugador
vida = 0; //Vida (Duh) -- El "Duh" XDDDD
storeVspeed = 0 //Guarda la velocidad vertical al pausar

song = 0

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




estado = 0;
// 0 Quieto
// 1 Moviendose
// 2 Saltando
// 3 Dash
// 4 Parry
// 5 IDK
// 6 EX
// 7 AGACHADO

shotdelay = 0 
shotting = 0; // Si esta disparando o no
enabledash = 0; // Controlar Enfriamiento del dash
dock = 0 // Controlar congelamiento del apuntar
enable = 1 // Controlar si el jugador se puede controlar o no en ese momento
inv = 60 //Tiempo de invulnerabilidad al recibír daño
inboss = 0 //Si la sala actual es un enfrentamiento contra jefe
actual_weapon = global.weapon01 //Arma del Jugador en ese momento (Alternar entre arma 1 y 2)
show_weapon = 0 //Comprobar si se debe mostrar o no el arma actual en el Hud