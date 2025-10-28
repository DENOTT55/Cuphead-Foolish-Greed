//General vars
image_speed = 0.1
showHitbox = false
hitbox = spr_calaboomHitbox
state = "spawn"
imScale = image_xscale
side = 1

//Custom vars
image_angle = 180
image_xscale = 0;image_yscale = 0
X = 0
Y = 0

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
	        spawn  = [spr_handSpawn,5]
			attack = [spr_handSpiny,5]
	    break;
	    default:
	        spawn  = [spr_handSpawn,5]
			attack = [spr_handSpiny,5]
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