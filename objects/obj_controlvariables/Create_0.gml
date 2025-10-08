ini_open("Save.ini")
if !file_exists("Save.ini"){
ini_write_real("Options","calidad",1)
ini_write_real("Player","worldx",1805)
ini_write_real("Player","worldy",223)
ini_write_real("World","mccoins",0)
ini_write_real("World","bhcoins",0)
ini_write_real("World","coins",0)
ini_write_real("Player","muertes",0)
//
ini_write_real("World","fmonte",0)
ini_write_real("World","ftitiritero",0)
ini_write_real("World","fbosqueh",0)
ini_write_real("World","fwendy",0)
//
ini_write_real("Player","kleft",vk_left)
ini_write_real("Player","kright",vk_right)
ini_write_real("Player","kup",vk_up)
ini_write_real("Player","kdown",vk_down)
ini_write_real("Player","kjump",ord("A"))
ini_write_real("Player","kshoot",ord("S"))
ini_write_real("Player","klock",ord("D"))
ini_write_real("Player","kex",ord("V"))
ini_write_real("Player","kdash",vk_shift)
ini_write_real("Player","kweapon",ord("W"))

}
//
//
global.graficos = ini_read_real("Options","calidad",1)
global.worldcupheadx = ini_read_real("Player","worldx",1805)
global.worldcupheady = ini_read_real("Player","worldy",223)
global.mc_coins = ini_read_real("World","mccoins",0)
global.bh_coins = ini_read_real("World","bhcoins",0)
global.coins = ini_read_real("World","coins",0)
global.muertes = ini_read_real("Player","muertes",0)

//NIVELES FINALIZADOS
global.fmonte = ini_read_real("World","fmonte",0)
global.ftitiritero = ini_read_real("World","ftitiritero",0)
global.fbosqueh = ini_read_real("World","fbosqueh",0)
global.fwendy = ini_read_real("World","fwendy",0)

//VARIABLES DE CONTROLES
global.kleft = ini_read_string("Player","kleft","vk_left")
global.kright = ini_read_string("Player","kright","vk_right")
global.kup = ini_read_string("Player","kup","vk_up")
global.kdown = ini_read_string("Player","kdown","vk_down")
global.kjump = ini_read_string("Player","kjump",ord("A"))
global.kshoot = ini_read_string("Player","kshoot",ord("S"))
global.klock = ini_read_string("Player","klock",ord("D"))
global.kex = ini_read_string("Player","kex",ord("V"))
global.kdash = ini_read_string("Player","kdash","vk_shift")
global.kweapon = ini_read_string("Player","kweapon",ord("W"))

//ESTABLECER VARIABLES DE ANDROID
SetControlsANDROID()

//LISTA DE ARMAS
//empty = [0, 10, 0, 0]
global.armas = [
	[obj_pea, 10, 0, obj_pea_ex],          // ID 0 Peashooter
	[obj_spikepea, 30, 1, obj_spikepea_ex] // ID 1 Mini Cactus
];

ini_open("SaveWeapons.ini")
global.we01 = ini_read_real("active Weapon", "1", 0)
global.we02 = ini_read_real("active Weapon", "2", 0)
ini_close()

//VARIABLES ARMAS, CHARMS, SUPER
global.weapon01 = global.armas[global.we01]
global.weapon02 = global.armas[global.we02]
global.charm = [0, 10, 0, 0]
global.super = [0, 10, 0, 0]
ini_close()

global.AVALIBLEWEAPONS = [
["Weapons", "Peashooter", 1],
["Weapons", "Mini Cactus", 0],
["Weapons", "example", 0],
["Weapons", "example", 0],
["Weapons", "example", 0],
["Weapons", "example", 0],
["Weapons", "example", 0],
["Weapons", "example", 0],
];

ini_open("SaveWeapons.ini")
//ARMAS

global.AVALIBLEWEAPONS[0,2] = ini_read_real("Weapons", "Peashooter", 1)
global.AVALIBLEWEAPONS[1,2] = ini_read_real("Weapons", "Mini Cactus", 0)
global.AVALIBLEWEAPONS[2,2] = ini_read_real("Weapons", "example", 0)
global.AVALIBLEWEAPONS[3,2] = ini_read_real("Weapons", "example", 0)
global.AVALIBLEWEAPONS[4,2] = ini_read_real("Weapons", "example", 0)
global.AVALIBLEWEAPONS[5,2] = ini_read_real("Weapons", "example", 0)
global.AVALIBLEWEAPONS[6,2] = ini_read_real("Weapons", "example", 0)
global.AVALIBLEWEAPONS[7,2] = ini_read_real("Weapons", "example", 0)
ini_close()

global.unlocked_weapons = [];

if (file_exists("Save.ini")) {
    ini_open("Save.ini");
    var list = ini_read_string("Player", "Weapons", "0"); // por defecto solo el Peashooter
    global.unlocked_weapons = ds_list_create();
    var arr = string_split(list, ",");
    for (var i = 0; i < array_length(arr); i++) {
        ds_list_add(global.unlocked_weapons, real(arr[i]));
    }
    ini_close();
} else {
    global.unlocked_weapons = ds_list_create();
    ds_list_add(global.unlocked_weapons, 0); // Peashooter siempre disponible
}

//FUNCTION DESBLOQUEAR WEAPON
function unlock_weapon(_id) {
    if (!ds_list_find_index(global.unlocked_weapons, _id)) {
        ds_list_add(global.unlocked_weapons, _id);
        save_weapons(); // Guardamos el progreso
    }
}
//FUNCTION DE GUARDAR ARMAS
function save_weapons() {
    ini_open("save.ini");
    var str = "";
    for (var i = 0; i < ds_list_size(global.unlocked_weapons); i++) {
        str += string(global.unlocked_weapons[| i]);
        if (i < ds_list_size(global.unlocked_weapons) - 1) str += ",";
    }
    ini_write_string("Player", "Weapons", str);
    ini_close();
}

