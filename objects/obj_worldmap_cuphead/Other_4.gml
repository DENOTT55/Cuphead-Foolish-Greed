x = global.worldcupheadx
y = global.worldcupheady
ini_open("Save.ini")
ini_write_real("Player","worldx",x)
ini_write_real("Player","worldy",y)
global.coins = ini_read_real("World","coins",0)
ini_close()
instance_create_depth(x,y,-1,obj_saving_symbol)

if room = rm_island{
	audio_play_sound(the_secret_island_m,10,true,1)
}