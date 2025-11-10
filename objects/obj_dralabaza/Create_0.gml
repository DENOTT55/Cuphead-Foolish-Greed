//General vars - [usually is not necessary modify]
endAlpha = 0
atk = 0
phase = 1
image_speed = 1
imScale = image_xscale
side = 1

//General vars - [the customs ones]
hp = 250
totalHp = hp
showHitbox = false
hitbox = spr_dralabazaHitbox
state = "startAnim"
song = spookyMood
endScreen = spr_dralabaza_dead_screen

endText = // Frases entre faces [fase 1 - fase 2 - fase 3 - etc]
[ 
	choose("''Eso fue muy aBUUrrido''","''Entre dulce o truco, elegiste perdicion...''"),	//texto 1
	choose("''Ni AFK me ganas, patetico...''","''Te convertire en abono!''"),				//texto 2
]

//sounds
startSound = snd_drala_start
soundDie = snd_drala_die

//[Fase 1 a 2 - fase 2 a 3 - Etc]
soundSwitchPhase = [snd_drala_start,snd_drala_start]

phase1GenericSound = [snd_drala_atk1,snd_drala_atk2,snd_drala_atk3]
phase2GenericSound = [snd_drala_atk1,snd_drala_atk2,snd_drala_atk3]


//-----------------------------------------------------------------------------------------------------

//Custom vars
movement = 0
t2 = 5
invencible = false
y = ystart+90

//Images vars
skin = global.SKIN_NUM
S = sprite_index

//Timer vars
ODMformula = 2 //ODM = Oportunidad De Movimiento - poner los seg que deben pasar para cada accion
ODM = ODMformula*room_speed //formula
t = ODM

audio_sound_pitch(song,1)
audio_sound_gain(song,1,1)
audio_play_sound(song,1,true)
obj_cuphead_player.song = song
obj_cuphead_player.endScreen = endScreen
obj_cuphead_player.endText = endText
obj_cuphead_player.actualBoss = self

#region Sprite skins variables
	//[sprite name - end frame num - frame rate - hitbox reference]
	switch (skin)
	{
	    case 1:
			start  =	[spr_dralabaza_appear,		23,	10]
	        idle  =		[spr_dralabaza_idle,		5,	6,	spr_dralabazaHitbox]
			spawn =		[spr_dralabaza_spawn,		3,	6]
			attack1 =	[spr_dralabaza_attack1,		14,	10]
			idleP2  =	[spr_dralabaza_h1,			0,	6,	spr_dralabaza_hHitbox]
			attack2 =	[spr_dralabaza_h2,			0,	10]
			anim1	=	[spr_dralabaza_anim1,		12,	10]
			dizzy  =	[spr_dralabaza_h3,			0,	6,]
			die =		[spr_dralabaza_explode,		11,	10]
	    break;
	    default:
			start  =	[spr_dralabaza_appear,		23,	10]
	        idle  =		[spr_dralabaza_idle,		5,	6,	spr_dralabazaHitbox]
			spawn =		[spr_dralabaza_spawn,		3,	6]
			attack1 =	[spr_dralabaza_attack1,		14,	10]
			idleP2  =	[spr_dralabaza_h1,			0,	6,	spr_dralabaza_hHitbox]
			attack2 =	[spr_dralabaza_h2,			0,	10]
			anim1	=	[spr_dralabaza_anim1,		12,	10]
			dizzy  =	[spr_dralabaza_h3,			0,	6,]
			die =		[spr_dralabaza_explode,		11,	10]
	    break;
	}
#endregion

#region Custom Animation Control Vars
	frameRate = 10
	frameIndex = 0
	frameEnd = 4
	loop = true
	FPS = 0;
	play = true;
#endregion