///Menu de runas
if runeMenu = true
{
	code = (string(runeSlot[0])+string(runeSlot[1])+string(runeSlot[2])+string(runeSlot[3])+string(runeSlot[4]))
	var totalChecks = array_length(CODES)

	//-------------D E B U G---------------------------------------------------------
	draw_text(300,20,string(runeSlot[0])+" "+string(runeSlot[1])+" "+string(runeSlot[2])+" "+string(runeSlot[3])+" "+string(runeSlot[4]))

	 draw_text(20,20,"S0: "+string(rune[0])+" Def Pos: "+string(runePos[0]))
	 draw_text(20,40,"S1: "+string(rune[1])+" Def Pos: "+string(runePos[1]))
	 draw_text(20,60,"S2: "+string(rune[2])+" Def Pos: "+string(runePos[2]))
	 draw_text(20,80,"S3: "+string(rune[3])+" Def Pos: "+string(runePos[3]))
	draw_text(20,100,"S4: "+string(rune[4])+" Def Pos: "+string(runePos[4]))
	
	draw_text(20,120,"order: "+string(order))
	draw_text(20,140,"code: "+string(code))
	draw_text(20,160,"n: "+string(n))
	draw_text(20,180,"cExist: "+string(codeExist))
	//-------------------------------------------------------------------------------

	draw_sprite_ext(spr_runas_bg,0,640,360,4,4,0,c_white,1)

	draw_sprite_ext(spr_runas,0,runePos[0],360,4,4,0,c_white,1)
	draw_sprite_ext(spr_runas,0,runePos[1],360,4,4,0,c_white,1)
	draw_sprite_ext(spr_runas,0,runePos[2],360,4,4,0,c_white,1)
	draw_sprite_ext(spr_runas,0,runePos[3],360,4,4,0,c_white,1)
	draw_sprite_ext(spr_runas,0,runePos[4],360,4,4,0,c_white,1)

	draw_sprite_ext(spr_runas,6,runePos[2],goY,4,4,0,c_white,1)

	draw_sprite_ext(spr_runas,1,rune[0],runePosY[0],4,4,0,make_colour_rgb(255, rgb, rgb),1)
	draw_sprite_ext(spr_runas,2,rune[1],runePosY[1],4,4,0,make_colour_rgb(255, rgb, rgb),1)
	draw_sprite_ext(spr_runas,3,rune[2],runePosY[2],4,4,0,make_colour_rgb(255, rgb, rgb),1)
	draw_sprite_ext(spr_runas,4,rune[3],runePosY[3],4,4,0,make_colour_rgb(255, rgb, rgb),1)
	draw_sprite_ext(spr_runas,5,rune[4],runePosY[4],4,4,0,make_colour_rgb(255, rgb, rgb),1)


	for (var i = 0; i < 5; ++i) {
		var num = i-2;
		
		draw_sprite_ext(spr_runas,i+1,640+(multiply*num),360+(360/1.5),4,4,0,c_white,alpha)
	}

	

	draw_sprite_ext(skin,-1,curPosX,360+(360/1.5),4,4,0,c_white,1)
	curPosX = lerp(curPosX,runePos[curPos],0.3)
	
	if keyboard_check_pressed(global.kright) and curPos < 4
		{curPos++}
	
	if keyboard_check_pressed(global.kleft)  and curPos > 0
		{curPos--}
	
	if keyboard_check_pressed(global.kjump) and runeSlot[curPos] = -1  and curPos != 5
	{
		runeSlot[curPos] = order
		runeNewPosX[curPos] = runePos[order]
		if order < 4 {order++}
	}
	else if keyboard_check_pressed(global.kjump) and curPos = 5
	{
		if codeExist = true
		{
			RuneReward()
		}
		else
		{
			rgb = 0;
			runePosY[0] = 380
			runePosY[1] = 380
			runePosY[2] = 380
			runePosY[3] = 380
			runePosY[4] = 380
		}
	}
	
	if keyboard_check_pressed(global.kshoot)
	{
		order = 0;curPos = 0;n = 0;codeExist = false;
		runeSlot[0] = -1
		runeSlot[1] = -1
		runeSlot[2] = -1
		runeSlot[3] = -1
		runeSlot[4] = -1
		
		rune[0] = runePos[0]
		rune[1] = runePos[1]
		rune[2] = runePos[2]
		rune[3] = runePos[3]
		rune[4] = runePos[4]
	}
	
	if runeSlot[0] > -1
	{runePosY[0] = lerp(runePosY[0],360,0.2)}
	else
	{runePosY[0] = lerp(runePosY[0],360+(360/1.5),0.2)}
	if runeSlot[1] > -1
	{runePosY[1] = lerp(runePosY[1],360,0.2)}
	else
	{runePosY[1] = lerp(runePosY[1],360+(360/1.5),0.2)}
	if runeSlot[2] > -1
	{runePosY[2] = lerp(runePosY[2],360,0.2)}
	else
	{runePosY[2] = lerp(runePosY[2],360+(360/1.5),0.2)}
	if runeSlot[3] > -1
	{runePosY[3] = lerp(runePosY[3],360,0.2)}
	else
	{runePosY[3] = lerp(runePosY[3],360+(360/1.5),0.2)}
	if runeSlot[4] > -1
	{runePosY[4] = lerp(runePosY[4],360,0.2)}
	else
	{runePosY[4] = lerp(runePosY[4],360+(360/1.5),0.2)}
	
	if runeSlot[0] > -1
	{rune[0] = lerp(rune[0],runePos[runeSlot[0]],0.3)}
	if runeSlot[1] > -1
	{rune[1] = lerp(rune[1],runePos[runeSlot[1]],0.3)}
	if runeSlot[2] > -1
	{rune[2] = lerp(rune[2],runePos[runeSlot[2]],0.3)}
	if runeSlot[3] > -1
	{rune[3] = lerp(rune[3],runePos[runeSlot[3]],0.3)}
	if runeSlot[4] > -1
	{rune[4] = lerp(rune[4],runePos[runeSlot[4]],0.3)}
	
	if (runeSlot[0] > -1 and runeSlot[1] > -1 and runeSlot[2] > -1 and runeSlot[3] > -1 and runeSlot[4] > -1)
	{
		goY = lerp(goY,360+(360/1.5),0.3);
		curPos = 5;
		skin = spr_runas_cursor2;
		alpha =  lerp(alpha,0,0.3)
		
		if code = CODES[n]
		{codeExist = true}
		
		if codeExist = false and n < totalChecks-1 {n++}
		else if n >= totalChecks {n = 0}
	}
	else
	{
		goY = lerp(goY,360*6,0.4);
		skin = spr_runas_cursor;
		alpha =  lerp(alpha,0.4,0.3)
	}
	
	rgb =  lerp(rgb,255,0.15)
}

