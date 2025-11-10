
#region Setup
	if t > 0 {t--}
	if t2 > 0 {t2--}
	if t2 < 0 {t2 = 0}
	
	sprite_index = S
	
	if phase = 1
	{image_xscale = imScale*side}
	
	image_alpha = lerp(image_alpha,1,0.5)
	
	if phase = 1
	{
		y = lerp(y,ystart,0.02)
		if vspeed > 0 {vspeed -= 1}
	}
	
	if hp < 1 and state != "die"{t = ODM*1.5}
	if hp < 1 {state = "die";}
	
	if hp < totalHp/3 and phase = 1 and state != "switchPhase2"{image_index = 0;frameIndex = 0;state = "switchPhase2";}
	
	if obj_cuphead_player.enable = 0 {state = "stop"}
	
	mask_index = hitbox
	
	SpriteAnimationControl(true)
#endregion

//Maquina de estados
switch (state) {
	
    case "idle":
		
		image_blend = c_white
		
        if t = 0 and phase = 1 {t = round(random_range(ODM,ODM*2.5))} //ODM face 1
		if t = 0 and phase = 2 {t = round(random_range(ODM,ODM*1.5))} //ODM face 2
		
		if t = 1 and phase = 1 {atk = choose(0,1,2);image_index = 0;state = "attack"}
		if t = 1 and phase = 2 {atk = choose(0,1);image_index = 0;state = "attackP2"}
		
		switch (phase) {
		    case 1:
		        frameRate	= idle[2]
				frameEnd	= idle[1]
				S			= idle[0]
				hitbox		= idle[3]
		    break;
			case 2:
		        frameRate	= idleP2[2]
				frameEnd	= idleP2[1]
				S			= idleP2[0]
				hitbox		= idleP2[3]
		    break;
		}
		
		if phase = 2
		{
			if place_free(x,y+vspeed)
			{vspeed++}
		
			if !place_free(x,y+vspeed)
			{vspeed = 0}
			
			invencible = true
		}
		
		#region side to side movement
		
		if phase = 1
		{
			if movement == 0 {if hspeed < 5 {hspeed += 0.1}}
			else {if hspeed > -5 {hspeed -= 0.1}}
	
			if x > 474 {movement = 1}
			if x < 200 {movement = 0}
		
			if t2 = 0
			{
				if movement = 1 {movement = 0}else{movement = 1}
				t2 = round(random_range(60,80))
			}
		}
		
		#endregion
		
		//Face the player
		if x > obj_cuphead_player.x {side = 1}
		else if x < obj_cuphead_player.x {side = -1}
		
    break;
	
	case "attack":
        if t = 0 {t = ODM+1}
		if t = 1 {state = "idle"}
		
		hspeed = 0
		
		if atk == 0
		{
			if t = ODM
			{
				audio_play_sound(phase1GenericSound[choose(0,1,2)],10,false,1.4,0,random_range(0.7,1.1))
				instance_create_layer(random_range(200,474),y,"Hud",obj_hand)
			}
			
			if t = round(ODM/2)
			{instance_create_layer(random_range(200,474),y,"Hud",obj_hand)}
			
			if t = round(ODM/3)
			{instance_create_layer(random_range(200,474),y,"Hud",obj_hand)}
			
			
			
			frameRate	= spawn[2]
			frameEnd	= spawn[1]
		    S			= spawn[0]
		}
		
		if atk == 1
		{
			if t = ODM
			{
				audio_play_sound(phase1GenericSound[choose(0,1,2)],10,false,1.4,0,random_range(0.7,1.1))
				instance_create_layer(x+(110*side),y,"Hud",obj_calaboom)
			}
			
			
			
			frameRate	= spawn[2]
			frameEnd	= spawn[1]
		    S			= spawn[0]
		}
		
		if atk == 2
		{
			t = ODM
			
			if frameIndex = 6 and FPS = 0
			{vspeed = 20;audio_play_sound(phase1GenericSound[choose(0,1,2)],10,false,1.4,0,random_range(0.7,1.1))}
			
			if frameIndex >= frameEnd-1
			{state = "idle";t = 0}
			
			frameRate	= attack1[2]
			frameEnd	= attack1[1]
		    S			= attack1[0]
		}
		
    break;
	
	case "attackP2":
        if t = 0 {t = ODM+1}
		if t = 1 {state = "idle"}
		
		hspeed = 0
		
		if atk == 0
		{
			if t = ODM
			{
				audio_play_sound(phase2GenericSound[choose(0,1,2)],10,false,1.4,0,random_range(0.7,1.1))
				instance_create_layer(x,y-40,"Hud",obj_calabaza)
			}
			
			if t = round(ODM*0.8)
			{instance_create_layer(x,y-40,"Hud",obj_calabaza)}
			
			if t = round(ODM*0.6)
			{state = "idle"}
			
			
			frameRate	= attack2[2]
			frameEnd	= attack2[1]
		    S			= attack2[0]
		}
		
		if atk == 1
		{
			if t = ODM*0.5
			{
				audio_play_sound(phase2GenericSound[choose(0,1,2)],10,false,1.4,0,random_range(0.7,1.1))
				instance_create_layer(x-(110*side),y-10,"Hud",obj_tangle)
			}
			if t = ODM
			{instance_create_layer(x-(110*side)*2,y-10,"Hud",obj_tangle)}
			
			if t = round(ODM*0.4)
			{state = "idle"}
			
			
			
			frameRate	= attack2[2]
			frameEnd	= attack2[1]
		    S			= attack2[0]
		}
		
    break;
	
	case "dizzy":
        if t = 0 {t = (ODM*2)+1}
		if t = 1 {state = "idle"}
		invencible = false
		S = dizzy[0]
    break;
	
	case "startAnim":
		if frameIndex >= frameEnd-1
		{state = "idle";t = 0;}
		
		if frameIndex = 1
		{audio_play_sound(startSound,10,false,1.4,0,random_range(0.7,1.1))}
		
		vspeed = 0
		hspeed = 0
		
		frameRate	= start[2]
		frameEnd	= start[1]
		S			= start[0]
    break;
	
	case "switchPhase2":
		if frameIndex >= frameEnd-1
		{
			state = "idle";
			t = 0;
			phase = 2;
			vspeed = -18;
			instance_create_layer(x,y,"Hud",obj_spookyExplode);
		}
		
		vspeed = 0
		hspeed = 0
		x = lerp(x,room_width/2,0.4)
		
		frameRate	= anim1[2]
		frameEnd	= anim1[1]
		S			= anim1[0]
    break;
	
	case "die":
		if t = ODM*1 
		{
			audio_play_sound(soundDie,10,false,1.4,0,random_range(0.7,1.1))
			instance_destroy(obj_fall_damage_collision)
			global.fdralabaza = 1
			ini_open("Save.ini")
			ini_write_real("World","fwendy",1)
			ini_close()
			audio_play_sound(snd_BOSS_Explosion,10,false)
			instance_create_layer(0,0,"Instances",obj_knockout_letter)
			audio_sound_gain(song,0,1000)
		}
		
		if t <= 1 {if endAlpha < 1 {endAlpha+=0.01}}
		
		if endAlpha = 1-0.01 
		{
			alarm[0] = room_speed*1
			obj_cuphead_player.enable = 0
			obj_cuphead_player.enable = 0
		}
		
		loop = false
		vspeed = 0
		hspeed = 0
		
		frameRate	= die[2]
		frameEnd	= die[1]
		S			= die[0]
    break;
	
	case "stop":
		vspeed = 0
		hspeed = 0
		
		obj_cuphead_player.bossHp = hp
		
		audio_sound_gain(song,0.2,500)
		audio_sound_pitch(song,0.8)
		
		switch (phase) {
		    case 1:
		        frameRate	= idle[2]
				frameEnd	= idle[1]
				S			= idle[0]
		    break;
			case 2:
		        frameRate	= idleP2[2]
				frameEnd	= idleP2[1]
				S			= idleP2[0]
		}
    break;
	
    default:
        state = "idle"
    break;
}