
image_angle = lerp(image_angle,0,0.2)
image_xscale = lerp(image_xscale,1,0.2)
image_yscale = lerp(image_yscale,1,0.2)
if t > 0 {t--}
if t < 0 {t = 0}
sprite_index = S
image_xscale = side
SpriteAnimationControl(true)

//Maquina de estados
switch (state) {
	
    case "spawn":
		if t = 0 {t = ODM/2}
		if t = 1 {state = "attack"}
		
	    if frameIndex < 3 {play = true;}
	    else {play = false;}
    break;
	
	case "attack":
		if frameIndex < frameEnd {play = true}
		else {play = false;instance_destroy()}
		
		if frameIndex = 4 {take = true}
		
		if frameIndex = 7 {take = false}
    break;
}