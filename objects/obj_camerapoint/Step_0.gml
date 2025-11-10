/*
if keyboard_check_pressed(global.kpause)
{
	switch (global.PAUSE)
	{
	    case true:
	        global.PAUSE = false
	    break;
		
		case false:
	        global.PAUSE = true
	    break;
	}
}*/

if instance_exists(obj_cuphead_player) {
if(x != obj_cuphead_player.x)
{
	x += (obj_cuphead_player.x - x) * camspeed;
}

if(y != obj_cuphead_player.y)
{
	y += (obj_cuphead_player.y - y) * camspeed;	
}}
else
if instance_exists(obj_worldmap_cuphead) {
if(x != obj_worldmap_cuphead.x)
{
	x += (obj_worldmap_cuphead.x - x) * camspeed;
}

if(y != obj_worldmap_cuphead.y)
{
	y += (obj_worldmap_cuphead.y - y) * camspeed;	
}}

ini_open("SaveArchivements.ini")
	var actualDeaths = ini_read_real("Archivements","Ve a tocar pasto...",0)
ini_close()

if global.muertes >= 50 and actualDeaths = 0
{UnlockArchivement(2,"Ve a tocar pasto...","Consigue mas de 1000 muertes",1)}