movement = 0
hp = 100
act = 0
image_alpha = 0 //El Boss empieza invisible, pues hace la animación de aparición
image_speed = 0.80
alarm_set(0,60)
nattack = 0
// 0 = Nule
// 1 = espadas
// 2 = sombrero con conejo
// 3 = Boink
die = 0

skin = global.SKIN_NUM

#region Sprite skins variables
	//[sprite name]
	switch (skin)
	{
	    case 1: // Jawulin
			start	=	spr_boss01_intro_HW
			idle	=	spr_boss01_idle_HW
			prepare	=	spr_boss01_prepare_HW
	        hold	=	spr_boss01_prepare02_HW
			clone	=	spr_boss01_duplicate_HW
			attack	=	spr_boss01_atk_HW
			transi	=	spr_boss01_transition_2_HW
			die		=	spr_boss01_transition_HW
	    break;
	    default:
			start	=	spr_boss01_intro
			idle	=	spr_boss01_idle
			prepare	=	spr_boss01_prepare
	        hold	=	spr_boss01_prepare02
			clone	=	spr_boss01_duplicate
			attack	=	spr_boss01_atk
			transi	=	spr_boss01_transition_2
			die		=	spr_boss01_transition
	    break;
	}
#endregion

sprite_index = start