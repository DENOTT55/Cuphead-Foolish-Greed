image_speed = 1
hp = 4
alarm_set(0,110)
if instance_number(obj_clown_mob_1) > 2{
	instance_destroy()	
}

skin = global.SKIN_NUM

#region Sprite skins variables
	//[sprite name]
	switch (skin)
	{
	    case 1: // Jawulin
			idle	=	spr_clown_mob_1_HW
			attack	=	spr_clown_mob_2_HW
	    break;
	    default:
			idle	=	spr_clown_mob_1
			attack	=	spr_clown_mob_2
	    break;
	}
#endregion