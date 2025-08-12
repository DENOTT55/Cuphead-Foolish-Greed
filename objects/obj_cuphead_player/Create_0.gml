coyote = 0
shadow_distance = 160; // Distancia máxima a la que se dibujará la sombra debajo del jugador
shadow_y = y;  // Inicializar si no existe

// Variables del jugador

cards = 0 // Cartas disponibles para hacer ataques especiales
vulnerable = 0 // Invulnerabilidad al recibir dano
shothandframe = 0;//Variable de velocidad de la mano al disparar
image_speed = 0.15;
global.aim = 0; // Direccion apuntado
velocidad = 4; //Velocidad del Jugador
vida = 0; //Vida (Duh)

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