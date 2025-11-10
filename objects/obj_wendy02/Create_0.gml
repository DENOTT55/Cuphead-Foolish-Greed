alarm_set(0,90)
hp = 240
image_speed = 0
act = 0
atk = 0
xx = x
yy = y
die = 0

bounce_speed = 0.003; // How fast the sprite scales
bounce_strength = 0.02;	// How much the sprite scales (the bounce strength)
base_scale = 1; // The default scale of the sprite

skin = global.SKIN_NUM

#region Sprite skins variables
	//[sprite name]
	switch (skin)
	{
	    case 1: // Jawulin
			transition = spr_wendy_transition
			start  =	spr_wendy2_intro
	        idle  =		spr_wendy2_idle
			block =		spr_wendy2_block
			prepare =	spr_wendy2_prepare
			attack =	spr_wendy2_atk
			die		=	spr_wendy2_die
	    break;
	    default:
			transition = spr_wendy_transition
			start  =	spr_wendy2_intro
	        idle  =		spr_wendy2_idle
			block =		spr_wendy2_block
			prepare =	spr_wendy2_prepare
			attack =	spr_wendy2_atk
			die		=	spr_wendy2_die
	    break;
	}
#endregion

sprite_index = transition

function unblock(){
	sprite_index = block
	image_index = 1
	image_speed = 0
	alarm_set(9,45)
	act = 8
}

alarm_set(10,random_range(80,120))

