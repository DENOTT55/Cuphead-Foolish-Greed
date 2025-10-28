
y = lerp(y,Y,0.2)
if t > 0 {t--}
sprite_index = S
image_xscale = side
SpriteAnimationControl(true)

//Maquina de estados
switch (state) {
	
    case "spawn":
       if frameIndex = frameEnd-1 {frameIndex = frameEnd}
	   S = spawn[0]
	   
	   frameEnd = spawn[1]
	   
	   if x > obj_cuphead_player.x {side = 1}
	   else if x < obj_cuphead_player.x {side = -1}
	   
	   if t = 1 {state = "attack";frameIndex = 0;Y = obj_cuphead_player.y;play = true;}
    break;
	
	case "attack":
		if frameIndex = frameEnd-1 {frameIndex = frameEnd}
        S = attack[0]
		
		frameEnd = attack[1]
		
		if side = -1 {if hspeed < 15 {hspeed += 0.1}}
		else {if hspeed > -15 {hspeed -= 0.1}}
    break;
}