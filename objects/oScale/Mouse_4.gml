
if oVolverAlMenu.itemID.ssx < 2.5 && oVolverAlMenu.itemID.ssy < 2.5 && type = "plus"
{oVolverAlMenu.itemID.ssx+=0.1;oVolverAlMenu.itemID.ssy+=0.1}

if oVolverAlMenu.itemID.ssx > 0.3 && oVolverAlMenu.itemID.ssy > 0.3 && type = "minus"
{oVolverAlMenu.itemID.ssx-=0.1;oVolverAlMenu.itemID.ssy-=0.1}

audio_play_sound(snd_weaponmenu_clic,5,false,0.5,0,random_range(0.8,1.2))