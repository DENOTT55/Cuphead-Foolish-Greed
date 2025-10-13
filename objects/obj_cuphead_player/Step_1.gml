if enable == 1{
// Jump Control


if keyboard_check(global.kjump) {
	if place_meeting(x,y+2,obj_collision) or coyote < 10 {
	if estado != 3 && estado != 7 {
	coyote = 20
	vspeed = -11
	audio_play_sound(snd_cuphead_jump,10,false,random_range(0.8,1))	
if room == rm_bosque_helado {
	instance_create_depth(x-16,y + 36,0,obj_snow_particle)	
	instance_create_depth(x+16,y + 36,0,obj_snow_particle)	
}
	}}
}

if estado == 2{
if keyboard_check_released(global.kjump)
	{
	if vspeed < 0{
	repeat(10)
	vspeed += 0.2
	}}}


// Parry Control
if estado == 2{
if keyboard_check_pressed(global.kjump)
	{
	estado = 4
	sprite_index = spr_cupparry
	instance_create_layer(x,y,"Instances",obj_parryhitbox)
	}
}


// Walking Control

if estado != 3 && estado != 7{
if keyboard_check(global.kright)
{
	image_xscale = 1
	if dock = 0{
	if estado < 2{
	estado = 1
	sprite_index = spr_cupwalk
	image_speed = 1}
	if (!place_meeting(x+velocidad, y, obj_collision))
	{
		x += velocidad
	}}
} if keyboard_check_released(global.kright) {
	if dock = 0{
	estado = 0
	sprite_index = spr_cupidle
	image_speed = 0.15
}}


if keyboard_check(global.kleft)
{
	image_xscale = -1
	if dock = 0{
	if estado < 2{
	estado = 1
	sprite_index = spr_cupwalk
	image_speed = 1}
	if (!place_meeting(x-velocidad, y, obj_collision))
	{
		x -= velocidad
	}}
} if keyboard_check_released(global.kleft) {
	if dock = 0{
	estado = 0
	sprite_index = spr_cupidle
	image_speed = 0.15
}
}
}

#region ///Android Movement

if estado != 7
{
if oAndroidJoystick.joyMoveX > 30 and global.JOYSTICKACTIVE = true 
{
	image_xscale = 1
	if dock = 0
	{
		if estado < 2
		{
			estado = 1
			sprite_index = spr_cupwalk
			image_speed = 1
		}
		if (!place_meeting(x+velocidad, y, obj_collision))
		{
			x += velocidad
		}
	}
}
else if  oAndroidJoystick.joyMoveX >= 0 and oAndroidJoystick.joyMoveX < 29 and global.JOYSTICKACTIVE = true 
{
	if dock = 0
	{
		estado = 0
		sprite_index = spr_cupidle
		image_speed = 0.15
	}
}

if oAndroidJoystick.joyMoveX < -30 and global.JOYSTICKACTIVE = true 
{
	image_xscale = -1
	if dock = 0
	{
		if estado < 2
		{
			estado = 1
			sprite_index = spr_cupwalk
			image_speed = 1
		}
		if (!place_meeting(x-velocidad, y, obj_collision))
		{
			x -= velocidad
		}
	}
}
else if oAndroidJoystick.joyMoveX <= 0 and oAndroidJoystick.joyMoveX > -29 and global.JOYSTICKACTIVE = true 
{
	if dock = 0
	{
		estado = 0
		sprite_index = spr_cupidle
		image_speed = 0.15
	}
}
}

if place_meeting(x,y+1,obj_collision){
if estado <= 1{
if oAndroidJoystick.joyMoveY >= 30 and oAndroidJoystick.joyMoveX <= 20 and oAndroidJoystick.joyMoveX > -20{
if dock = 0{
	estado = 7		
	sprite_index = spr_cupcrouch
	image_speed = 0
	vspeed = 0
	}
}}}

if estado == 7{
if oAndroidJoystick.joyMoveY > -30 and oAndroidJoystick.joyMoveY < 0{
if dock = 0{
	estado = 0		
	sprite_index = spr_cupidle
	image_index = 0
	image_speed = 0
	}
}}

#endregion

//Aim Extra Control
if keyboard_check_released(global.kup)
{
	if image_xscale = 1
	{
	global.aim = 0	
	}	else	{
	global.aim = 180	
	}	
}

if keyboard_check_released(global.kdown)
{
	if image_xscale = 1
	{
	global.aim = 0	
	}	else	{
	global.aim = 180	
	}	
}

// Shot Control
if estado != 6{
if keyboard_check(global.kshoot)
{
	shotting = 1			
}	else	{
	shotting = 0
}

if keyboard_check(global.kshoot)
{
	if shotdelay == 0{
	if estado == 7{
	instance_create_depth(x,y+20,depth-1,actual_weapon[0])}
	else { instance_create_depth(x,y,depth-1,actual_weapon[0]) }
	shotdelay = 1
	alarm_set(0,actual_weapon[1])}
}
}

// Dash Control
if enabledash == 0{
if estado != 3{
	if keyboard_check_pressed(global.kdash)
	{
	enabledash = 1
	vspeed = 0
	gravity = 0
	alarm_set(1,20)
	estado = 3
	sprite_index = spr_cupdash
	if image_xscale = 1
	{
		hspeed = 9
	}	else	{
		hspeed = -9
	}
	}
}}
// CARDS CONTROL
if cards > 5{
cards = 5	
}

// EX ATTACK CONTROL

if estado != 6{
if keyboard_check_pressed(global.kex)
{
	if cards >= 1{
	instance_create_layer(x,y,"Instances",actual_weapon[3])
	estado = 6
	sprite_index = spr_cupdexattack
	if image_xscale = 1{
		hspeed = -2	
	}
	if image_xscale = -1{
		hspeed = 2	
	}
	alarm_set(3,15)}
	if cards != 0{
	cards -= 1}
}
}


// Dock Control
if estado != 3 && estado != 7{
if place_meeting(x,y+1,obj_collision){
if keyboard_check(global.klock)
{
	sprite_index = spr_cupidle
	image_speed = 0.10
	dock = 1
}	
}

}
}

if keyboard_check_released(global.klock)
{
	dock = 0
}

if keyboard_check_pressed(global.kweapon){
	if actual_weapon == global.weapon02{
		actual_weapon = global.weapon01	
	}	else
	if actual_weapon == global.weapon01{
		actual_weapon = global.weapon02	
	}
	show_weapon = 1
	alarm_set(4,50)
}

// Agacharse

if place_meeting(x,y+1,obj_collision){
if estado <= 1{
if keyboard_check(global.kdown){
if dock = 0{
	estado = 7		
	sprite_index = spr_cupcrouch
	image_speed = 0
	vspeed = 0
	}
}}}

if estado == 7{
if keyboard_check_released(global.kdown){
if dock = 0{
	estado = 0		
	sprite_index = spr_cupidle
	image_index = 0
	image_speed = 0
	}
}}

if estado == 7{
	if shotting == 0{
		image_index = 0	
	}	else	{
		image_index = 1	
	}	
	if keyboard_check(global.kright){
		image_xscale = 1
		
	}
	if keyboard_check(global.kleft){
		image_xscale = -1

	}	
	if image_xscale = 1{
		global.aim = 0
	}
	if image_xscale = -1{
		global.aim = 180
	}
}