
if global.abAlpha < 1 && type = "plus"
{global.abAlpha+=0.1}

if global.abAlpha > 0.1 && type = "minus"
{global.abAlpha-=0.1}

audio_play_sound(snd_weaponmenu_clic,5,false,0.5,0,random_range(0.8,1.2))