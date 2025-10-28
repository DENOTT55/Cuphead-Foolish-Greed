
sprite_index = S
SpriteAnimationControl(true)

//Maquina de estados
switch (state) {
	
    case "spawn":
       if frameIndex = frameEnd-1 {instance_destroy()}
	   S = spawn[0]
	   frameEnd = spawn[1]
    break;
}