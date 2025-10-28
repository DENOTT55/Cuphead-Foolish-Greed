//General vars
image_speed = 0.1
showHitbox = false
hitbox = spr_handHitbox
state = "spawn"
imScale = image_xscale
side = 1

//Custom vars
Y = y

//Images vars
skin = 0
S = sprite_index

//Timer vars
ODMformula = 1 //ODM = Oportunidad De Movimiento - poner los seg que deben pasar para cada accion
ODM = ODMformula*room_speed //formula
t = ODM

#region Sprite skins variables
	switch (skin)
	{
	    case 1:
	        spawn  = [spr_handSpawn,7]
			attack = [spr_handSpiny,6]
	    break;
	    default:
	        spawn  = [spr_handSpawn,7]
			attack = [spr_handSpiny,6]
	    break;
	}
#endregion

#region Custom Animation Control Vars
	frameRate = 10
	frameIndex = 0
	frameEnd = 4
	loop = false
	FPS = 0;
	play = true;
#endregion