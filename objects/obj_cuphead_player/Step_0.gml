// Detectar si hay un objeto sólido debajo del jugador
shadow_y = y + 1; // Comenzamos justo debajo del jugador
while (!place_meeting(x, shadow_y, obj_collision) && shadow_y < y + shadow_distance) {
    shadow_y += 1; // Incrementamos en Y hasta encontrar un sólido o llegar a la distancia máxima
}

// Control de Apuntado

if enable == 1{
if keyboard_check(global.kleft)
{
    global.aim = 180
}
if keyboard_check(global.kright)
{
    global.aim = 0
}
if estado != 7{
if keyboard_check(global.kup)
{
    global.aim = 90
}

if keyboard_check(global.kleft) && keyboard_check(global.kup)
{
    global.aim = 150
}
if keyboard_check(global.kright) && keyboard_check(global.kup)
{
    global.aim = 30
}
if keyboard_check(global.kleft) && keyboard_check(global.kdown)
{
    global.aim = 215
}
if keyboard_check(global.kright) && keyboard_check(global.kdown)
{
    global.aim = 325
}}

// Control Gravedad
}

if estado < 3{
if (!place_meeting(x, y + 1, obj_collision))
    {
        coyote += 1
		gravity = 0.5
		gravity_direction = -90
		estado = 2
		sprite_index = spr_cupjump
		image_speed = 1
	}	else	{
		gravity = 0
	}

if vspeed > 12
	{
		vspeed = 12	
	}
}
shothandframe += 0.2

if enable == 1{
if vida > 2 {
	enable = 0
	image_alpha = 0
	layer_enable_fx("dark_effect",true)
	instance_create_layer(x,y,"Hud",obj_die_screen)
	shotting = 0
	vspeed = 0
	hspeed = 0
	audio_play_sound(snd_cuphead_die,11,false,1,0,random_range(0.8,1.2))
	instance_create_layer(x,y,layer,obj_cup_soul)
	CupheadIsDeathControls()
	global.muertes += 1
}}

if vida > 2{
	vulnerable = 1
	image_alpha = 0
}