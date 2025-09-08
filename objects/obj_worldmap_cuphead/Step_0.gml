if smoke > 0{
	smoke -= 1	
}

if enable == 1{
hInput = keyboard_check(global.kright) - keyboard_check(global.kleft);
vInput = keyboard_check(global.kdown) - keyboard_check(global.kup);

if(hInput != 0 or vInput != 0){
	if smoke == 0{
	instance_create_depth(x,y,depth,obj_walk_smoke_particle_t)
	smoke = 20}
	dir = point_direction(0,0,hInput,vInput);

	x += hInput * spd;
	y += vInput * spd;
			

//Cambio de Sprite
	switch(dir){
		case 0: sprite_index = spr_overworld_cuphead_side; image_xscale = -1; break;
		case 45: sprite_index = spr_overworld_cuphead_diagonal02; image_xscale = -1; break;
		case 90: sprite_index = spr_overworld_cuphead_up; image_xscale = -1; break;
		case 135: sprite_index = spr_overworld_cuphead_diagonal02; image_xscale = 1; break;
		case 180: sprite_index = spr_overworld_cuphead_side; image_xscale = 1; break;
		case 225: sprite_index = spr_overworld_cuphead_diagonal; image_xscale = 1; break;
		case 270: sprite_index = spr_overworld_cuphead_down; image_xscale = 1; break;
		case 315: sprite_index = spr_overworld_cuphead_diagonal; image_xscale = -1; break;
		
	} } else {
		image_index	= 0
	}
}

if equipmenu == 0{
	equipmenurot = 8
	equipmenuy = -360
}	else	{
	if equipmenuy < 360
	{
		equipmenuy += 40	
	}
	
	if equipmenurot > 0{
		equipmenurot -= 0.5
	}
}
	
if keyboard_check_pressed(global.kdash){
if enable == 1{
	enable = 0
	layer_enable_fx("dark_effect",true)
	equipmenu = 1
}}

if keyboard_check_pressed(global.kjump){
if equipmenu == 1{
	if equipinmark == 0{
		equipmenu = 2 // WEAPON A
	}
	if equipinmark == 1{
		equipmenu = 3 // WEAPON B
	}
	if equipinmark == 2{
		equipmenu = 4 // SUPER
	}
	if equipinmark == 3{
		equipmenu = 5 // CHARM
	}
}}

if keyboard_check_pressed(global.kshoot){
if equipmenu == 1{
	equipmenu = 0
	enable = 1
	layer_enable_fx("dark_effect",false)
}

if equipmenu > 1{
	equipmenu = 1
	selector_x = 0;
	selector_y = 0;
	index = 0
}}

if keyboard_check_pressed(global.kright){
if equipmenu == 1{
	if equipinmark < 3{
		equipinmark += 1
	audio_play_sound(snd_weaponmenu_clic,10,false,1,0,random_range(0.8,1.2))
	}	
}}

if keyboard_check_pressed(global.kleft){
if equipmenu == 1{
	if equipinmark > 0{
		equipinmark -= 1
	audio_play_sound(snd_weaponmenu_clic,10,false,1,0,random_range(0.8,1.2))
	}	
}}

// Cooldown para evitar doble input rápido
if equipmenu == 2 or equipmenu == 3 or equipmenu == 5{
if (input_delay > 0) {
    input_delay -= 1;
} else {
    // Movimiento en cuadrícula
    if (keyboard_check_pressed(global.kleft)) {
        selector_x = max(selector_x - 1, 0);
        input_delay = 6;
		audio_play_sound(snd_weaponmenu_clic,10,false,1,0,random_range(0.8,1.2))
    }
    if (keyboard_check_pressed(global.kright)) {
        selector_x = min(selector_x + 1, grid_cols - 1);
        input_delay = 6;
		audio_play_sound(snd_weaponmenu_clic,10,false,1,0,random_range(0.8,1.2))
    }
    if (keyboard_check_pressed(global.kup)) {
        selector_y = max(selector_y - 1, 0);
        input_delay = 6;
		audio_play_sound(snd_weaponmenu_clic,10,false,1,0,random_range(0.8,1.2))
    }
    if (keyboard_check_pressed(global.kdown)) {
        selector_y = min(selector_y + 1, grid_rows - 1);
        input_delay = 6;
		audio_play_sound(snd_weaponmenu_clic,10,false,1,0,random_range(0.8,1.2))
    }
}	// Cálculo del índice del arma en la lista
index = selector_y * grid_cols + selector_x;
}