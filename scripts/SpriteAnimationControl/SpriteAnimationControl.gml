/// @description SpriteAnimationControl()
/// @param {Bool} linkImage_index

function SpriteAnimationControl(argument0 = true) {
	if argument0 = true
	{image_index = frameIndex}


	if frameRate <= 1 {frameRate = 2}

	if frameIndex >= frameEnd and loop = false{FPS = 0;play = false;}
	else{


	if play = true {FPS++}
	else {FPS = 0;}
	if FPS >= room_speed {FPS = 0;play = false}


	//Loop Off
	if loop = false and frameIndex < frameEnd and FPS >= room_speed/frameRate and play = true
	{frameIndex++;FPS = 0;}

	if loop = false and frameIndex >= frameEnd 
	{frameIndex = frameEnd;play = false;FPS = 0;}


	//Loop On
	if loop = true and frameIndex < frameEnd and FPS >= room_speed/frameRate and play = true
	{frameIndex++;FPS = 0}

	if loop = true and frameIndex >= frameEnd
	{frameIndex=0;FPS = 0;}

	}



}
