//General vars
image_speed = 0.1
state = "spawn"

//Images vars
skin = 0
S = sprite_index

#region Sprite skins variables
	switch (skin)
	{
	    case 1:
	        spawn  = [spr_spookyExplode,5]
	    break;
	    default:
	        spawn  = [spr_spookyExplode,5]
	    break;
	}
#endregion

#region Custom Animation Control Vars
	frameRate = 10
	frameIndex = 0
	frameEnd = 5
	loop = false
	FPS = 0;
	play = true;
#endregion