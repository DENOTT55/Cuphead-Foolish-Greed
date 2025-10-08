draw_sprite_ext(spr_coin,0,+38,+49,1,1,0,c_white,1)
draw_set_font(level_letter_font)
draw_set_color(c_black)
draw_text(+88,+36,global.coins)
draw_text(+66,+33,"x")
draw_set_font(level_letter_font)
draw_set_color(c_white)
draw_text(+66,+31,"x")
draw_text(+86,+34,global.coins)

//draw_text(300,10,index)
//draw_text(330,10,global.weapon01)
//draw_text(360,10,global.weapon02)

if enable == 1{
if equipmenu < 1{ //Menu Cerrado
draw_sprite_ext(spr_equip_button,0,+1068,+24,1,1,0,c_white,1)}}
if equipmenu == 1{ //Menu Abierto
draw_sprite_ext(spr_equip_menu,equipinmark,+640,equipmenuy,2,2,equipmenurot,c_white,1)
draw_sprite_ext(spr_weapons_slots,global.weapon01[2],+434,equipmenuy+186,2,2,equipmenurot,c_white,1)
draw_sprite_ext(spr_weapons_slots,global.weapon02[2],+564,equipmenuy+186,2,2,equipmenurot,c_white,1)}


if equipmenu == 2{ //Menu Armas 1
draw_sprite_ext(spr_equip_menu_extras,0,+640,equipmenuy,2,2,equipmenurot,c_white,1)
draw_sprite_ext(spr_empty_slots,0,+640,equipmenuy,2,2,equipmenurot,c_white,1)

for (var i = 0; i < 7; i++) {

    var pos_x = 430 + (i mod 4) * 140; // posición en la grilla
    var pos_y = 288 + floor(i / 4) * 136;
	
	if i = 0
		{draw_sprite_ext(spr_weapons_slots, 0, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[1,2] = 1 and i = 1
		{draw_sprite_ext(spr_weapons_slots, 1, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[2,2] = 1 and i = 2
		{draw_sprite_ext(spr_weapons_slots, 2, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[3,2] = 1 and i = 3
		{draw_sprite_ext(spr_weapons_slots, 3, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[3,2] = 1 and i = 4
		{draw_sprite_ext(spr_weapons_slots, 4, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[3,2] = 1 and i = 5
		{draw_sprite_ext(spr_weapons_slots, 5, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[3,2] = 1 and i = 6
		{draw_sprite_ext(spr_weapons_slots, 6, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[3,2] = 1 and i = 7
		{draw_sprite_ext(spr_weapons_slots, 7, pos_x, pos_y,2,2,0,c_white,1);}
	
    }
/*
	draw_sprite_ext(spr_weapons_slots, 0, (640/2)+(320/4*1), (360/2)+(318/2*1),2,2,0,c_white,1);
	if global.AVALIBLEWEAPONS[1,2] = 1
		{draw_sprite_ext(spr_weapons_slots, 1, (640/2)+(320/4*2), (360/2)+(318/2*1),2,2,0,c_white,1);}

/*
for (var i = 0; i < ds_list_size(global.unlocked_weapons); i++) {
	var weapon_id = global.unlocked_weapons[| i];
	var frame = global.armas[weapon_id][2]; // frame del HUD

    var pos_x = 430 + (i mod 4) * 140; // posición en la grilla
    var pos_y = 288 + floor(i / 4) * 136;

    draw_sprite_ext(spr_weapons_slots, frame, pos_x, pos_y,2,2,0,c_white,1);
	if global.unlocked_weapons[1][2] = 1
		{draw_sprite_ext(spr_weapons_slots, 1, pos_x, pos_y,2,2,0,c_white,1);}
    }
*/	
// Dibuja el selector por encima
var sel_index = selector_y * grid_cols + selector_x;
    var sel_x = 430 + selector_x * 140;
    var sel_y = 288 + selector_y * 136;
    draw_sprite_ext(spr_select_mark, 0, sel_x, sel_y,2,2,0,c_white,1);
}	

if equipmenu == 3{ //Menu Armas 2
draw_sprite_ext(spr_equip_menu_extras,0,+640,equipmenuy,2,2,equipmenurot,c_white,1)
draw_sprite_ext(spr_empty_slots,0,+640,equipmenuy,2,2,equipmenurot,c_white,1)

for (var i = 0; i < 7; i++) {

    var pos_x = 430 + (i mod 4) * 140; // posición en la grilla
    var pos_y = 288 + floor(i / 4) * 136;
	
	if i = 0
		{draw_sprite_ext(spr_weapons_slots, 0, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[1,2] = 1 and i = 1
		{draw_sprite_ext(spr_weapons_slots, 1, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[2,2] = 1 and i = 2
		{draw_sprite_ext(spr_weapons_slots, 2, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[3,2] = 1 and i = 3
		{draw_sprite_ext(spr_weapons_slots, 3, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[3,2] = 1 and i = 4
		{draw_sprite_ext(spr_weapons_slots, 4, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[3,2] = 1 and i = 5
		{draw_sprite_ext(spr_weapons_slots, 5, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[3,2] = 1 and i = 6
		{draw_sprite_ext(spr_weapons_slots, 6, pos_x, pos_y,2,2,0,c_white,1);}
	if global.AVALIBLEWEAPONS[3,2] = 1 and i = 7
		{draw_sprite_ext(spr_weapons_slots, 7, pos_x, pos_y,2,2,0,c_white,1);}
	
    }
/*
for (var i = 0; i < ds_list_size(global.unlocked_weapons); i++) {
	var weapon_id = global.unlocked_weapons[| i];
	var frame = global.armas[weapon_id][2]; // frame del HUD

    var pos_x = 430 + (i mod 4) * 140; // posición en la grilla
    var pos_y = 288 + floor(i / 4) * 136;

    draw_sprite_ext(spr_weapons_slots, frame, pos_x, pos_y,2,2,0,c_white,1);
    }
*/
// Dibuja el selector por encima
var sel_index = selector_y * grid_cols + selector_x;
    var sel_x = 430 + selector_x * 140;
    var sel_y = 288 + selector_y * 136;
    draw_sprite_ext(spr_select_mark, 0, sel_x, sel_y,2,2,0,c_white,1);
}	


if equipmenu == 4{ //Menu Especiales
draw_sprite_ext(spr_equip_menu_extras,1,+640,equipmenuy,2,2,equipmenurot,c_white,1)
draw_sprite_ext(spr_empty_slots,1,+640,equipmenuy,2,2,equipmenurot,c_white,1)}


if equipmenu == 5{ //Menu Charms
draw_sprite_ext(spr_equip_menu_extras,2,+640,equipmenuy,2,2,equipmenurot,c_white,1)
draw_sprite_ext(spr_empty_slots,2,+640,equipmenuy,2,2,equipmenurot,c_white,1)}
