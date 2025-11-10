image_speed = 1
hp = 90
act = 0
die = 0

alarm_set(0,random_range(90,140))

// act  Payaso Caja
// Bomba Globo

skin = global.SKIN_NUM

#region Sprite skins variables
	//[sprite name]
	switch (skin)
	{
	    case 1: // Jawulin
			idle	=	spr_boss02_idle
			hide	=	spr_boss02_hide
	        search	=	spr_boss02_search
			die		=	spr_boss02_knockout
			Throw	=	spr_boss02_throw
			appear	=	spr_boss02_entrance
	    break;
	    default:
			idle	=	spr_boss02_idle
			hide	=	spr_boss02_hide
	        search	=	spr_boss02_search
			die		=	spr_boss02_knockout
			Throw	=	spr_boss02_throw
			appear	=	spr_boss02_entrance
	    break;
	}
#endregion