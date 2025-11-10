hp = 250
image_speed = 1
alarm_set(0,50)
act = 0
atk = 0
// 1 cuchillo
// 2 hearts
// 3 diamante

skin = global.SKIN_NUM

#region Sprite skins variables
	//[sprite name]
	switch (skin)
	{
	    case 1: // Jawulin
			start  =	spr_wendy_intro
	        idle  =		spr_wendy_idle
			attack1 =	spr_wendy_atk_01
			attack2 =	spr_wendy_atk_2
			attack3 =	spr_wendy_atk_3
			Throw	=	spr_wendy_atk_throw
	    break;
	    default:
			start  =	spr_wendy_intro
	        idle  =		spr_wendy_idle
			attack1 =	spr_wendy_atk_01
			attack2 =	spr_wendy_atk_2
			attack3 =	spr_wendy_atk_3
			Throw	=	spr_wendy_atk_throw
	    break;
	}
#endregion