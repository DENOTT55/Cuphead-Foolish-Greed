image_speed = 0
act = 0
vspeed = -3
hp = 6
y-=32
if instance_number(obj_penny) > 1{
	instance_destroy()	
}

skin = global.SKIN_NUM

#region Sprite skins variables
	//[sprite name]
	switch (skin)
	{
	    case 1: // Jawulin
			idle	=	spr_clown_mob_3_HW
	    break;
	    default:
			idle	=	spr_clown_mob_3
	    break;
	}
#endregion

sprite_index = idle