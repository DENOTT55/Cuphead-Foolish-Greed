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
global.armas = [
	[obj_pea, 10, 0, obj_pea_ex],          // ID 0 Peashooter
	[obj_spikepea, 30, 1, obj_spikepea_ex] // ID 1 Mini Cactus
	//[disparo principal, cadencia, fotograma del icono, disparo especial] // ID 2 
];

//VARIABLES ARMAS, CHARMS, SUPER
global.weapon01 = global.armas[0] //Aquí se pone el ID del arma
global.weapon02 = global.armas[0] //Aquí se pone el ID del arma
global.charm = [0, 10, 0, 0]
global.super = [0, 10, 0, 0]
ini_close()