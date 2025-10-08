/// @description UnlockArchivement()
/// @param {real} WeaponNum
/// @param {string} SubTextToArchivement
function UnlockWeapon(argument0 = 0,argument1 = "Weapon, yeih :D")
{	
	UnlockArchivement(argument0,"New Weapon: "+(global.AVALIBLEWEAPONS[argument0,1])+"!",argument1,true)
	if object_exists(obj_logro) 
	{
		obj_logro.sprite_index = spr_reward_weapon_icons
		obj_logro.image_index = argument0+1
	}
	global.AVALIBLEWEAPONS[argument0,2] = 1	
	
	ini_open("SaveWeapons.ini")
		ini_write_real("Weapons",global.AVALIBLEWEAPONS[argument0,1],global.AVALIBLEWEAPONS[argument0,2])
	ini_close()
}
