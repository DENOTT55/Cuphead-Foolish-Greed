
image_angle = lerp(image_angle,0,0.2)
image_xscale = lerp(image_xscale,1,0.2)
image_yscale = lerp(image_yscale,1,0.2)
if t > 0 {t--}
sprite_index = S
image_xscale = side
SpriteAnimationControl(true)

//Maquina de estados
switch (state) {
	
    case "spawn":
	   X = obj_cuphead_player.x-(500*obj_dralabaza.side)
	   Y = obj_cuphead_player.y+300
	   if t = 1 {state = "attack";}
    break;
	
	case "attack":
		move_towards_point(X,Y,4)
    break;
}