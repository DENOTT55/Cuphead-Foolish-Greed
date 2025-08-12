instance_create_depth(x,y,0,obj_coin_particle)
audio_play_sound(snd_coin,10,false,1,0,random_range(0.7,1.1))
if room == rm_monte_cao_tic{
	global.mc_coins += 1	
	ini_open("Save.ini")
	ini_write_real("World","mccoins",global.mc_coins)
	ini_write_real("World","coins",global.mc_coins+global.bh_coins)
	ini_close()
}

if room == rm_bosque_helado{
	global.bh_coins += 1	
	ini_open("Save.ini")
	ini_write_real("World","bhcoins",global.bh_coins)
	ini_write_real("World","coins",global.mc_coins+global.bh_coins)

	ini_close()

}
ini_open("Save.ini")
global.coins = ini_read_real("World","bhcoins",0) + ini_read_real("World","mccoins",0)
ini_close()
instance_destroy()


