/// @description UnlockArchivement()
/// @param {real} imageIndex
/// @param {string} Title[UseDisNameToSaveVariable]
/// @param {string} SubText
/// @param {bool} DataToSave[TrueOrFalseONLY]
function UnlockArchivement(argument0 = 1,argument1 = "Missing Reward!",argument2 = "IDK what you got, but yeih :D",argument3 = true)
{
	
	if !layer_exists("Archivement")
	{layer_create(-999,"Archivement")}
	
	var logro = instance_create_layer(-300, -300, "Archivement", obj_logro);
	
	logro.image_index = argument0
	logro.txt = argument1
	logro.SUBtxt = argument2
	
	
	ini_open("SaveArchivements.ini")
		ini_write_real("Archivements",argument1,argument3)
	ini_close()
	
	
}
