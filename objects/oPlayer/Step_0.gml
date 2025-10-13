/// @description Pause

SelectOptionOnPause()

if global.PAUSEGAME = true{play = false;exit}else{play = true}

///Movement

L   = keyboard_check(global.LEFT) || keyboard_check(global.LEFTalt)
R   = keyboard_check(global.RIGHT) || keyboard_check(global.RIGHTalt)
U   = keyboard_check(global.UP) || keyboard_check(global.UPalt)
D   = keyboard_check(global.DOWN) || keyboard_check(global.DOWNalt)

Up   = keyboard_check_pressed(global.UP) || keyboard_check_pressed(global.UPalt)
Dp   = keyboard_check_pressed(global.DOWN) || keyboard_check_pressed(global.DOWNalt)
Lp   = keyboard_check_pressed(global.LEFT) || keyboard_check_pressed(global.LEFTalt)
Rp   = keyboard_check_pressed(global.RIGHT) || keyboard_check_pressed(global.RIGHTalt)

A   = keyboard_check_pressed(global.A)
B   = keyboard_check_pressed(global.B) || keyboard_check_pressed(global.BACK) ||keyboard_check_pressed(global.BACKalt)
P   = keyboard_check_pressed(global.PAUSE)

x = x+Vx
y = y+Vy
depth = -y

VxMax = Vxalt
VyMax = Vyalt


///Recode movement player [ANDROID]-----------------------------
if instance_exists(oAndroidJoystick)
{
    if STOP = false
    {
        Vx = (oAndroidJoystick.joyMoveX / 95) * VxMax
        Vy = (oAndroidJoystick.joyMoveY / 95) * VyMax
    }
    else
    {Vx = lerp(Vx,0,1);Vy = lerp(Vy,0,1)}
    
    
    if oAndroidJoystick.joyMoveX > 8  {R = true;} else {R = false;}
    if oAndroidJoystick.joyMoveX < -8 {L = true;} else {L = false;}
    if oAndroidJoystick.joyMoveY > 8  {D = true;} else {D = false;}
    if oAndroidJoystick.joyMoveY < -8 {U = true;} else {U = false;}
    
    if !place_free(x+Vx,y)
    {
        if Vx != 0
        {Vx = lerp(Vx,0,1)}
        FREE = false
    }
    else
    {FREE = true}
    
    if !place_free(x,y+Vy)
    {
        if Vy != 0
        {Vy = lerp(Vy,0,1)}
        FREE = false
    }
    else
    {FREE = true}
}
//--------------------------------------------------------------
else
{
/*
if V > 0
{
    VxMax = Vxalt
    VyMax = Vyalt
}
else
{
    VxMax = VxMaxDef
    VyMax = VyMaxDef
}
*/

if FREE and !STOP
{
    //--- Move [Y] ---------------
    if L || R
    {
        if L and Vx > -VxMax
        {Vx = lerp(Vx,-VxMax,fricc)}
        if R and Vx < VxMax
        {Vx = lerp(Vx,VxMax,fricc)}
    }
    else
    {
        if Vx != 0
        {Vx = lerp(Vx,0,fricc)}
    }
    //--- Stop ---------------
    if L and R
    {
        if Vx != 0
        {Vx = lerp(Vx,0,fricc)}
    }
    //------------------------
    
    //--- Move [Y] ---------------
    if U || D
    {
        if U and Vy > -VyMax and !D
        {Vy = lerp(Vy,-VyMax,fricc)}
        if D and Vy < VyMax and !U
        {Vy = lerp(Vy,VyMax,fricc)}
    }
    else
    {
        if Vy != 0
        {Vy = lerp(Vy,0,fricc)}
    }
    //--- Stop ---------------
    if U and D
    {
        if Vy != 0
        {Vy = lerp(Vy,0,fricc)}
    }
    //------------------------
}

//--- Stop from a block ---------------
if !place_free(x+Vx,y)
{
    if Vx != 0
    {Vx = lerp(Vx,0,1)}
    FREE = false
}
else
{FREE = true}

if !place_free(x,y+Vy)
{
    if Vy != 0
    {Vy = lerp(Vy,0,1)}
    FREE = false
}
else
{FREE = true}
//------------------------

//--- Force stop ---------------
if STOP = true
{
    if Vx != 0
    {Vx = lerp(Vx,0,fricc*1.5)}
    if Vy != 0
    {Vy = lerp(Vy,0,fricc*1.5)}
}
//------------------------

}

///States

switch (state)
{
    case "idle": 
        STOP = false;
        t = 0;
    break;
    
    case "start": 
        STOP = true;
        t = 0;
    break;
    
    case "win": 
        STOP = true;
        t = 0;
    break;
    
    case "talk":
        STOP = true;
    break;
    
    case "fixing":
        var pushed = false;
        STOP = true;
        if t > 0 {t--}
        else 
        {
            frameIndex = 0;SetState("fixit");TaskComplete();frameIndex = 0
            SetGeneralTime(oInteractHitbox.targetID,choose(25,30,35,38))
            frameIndex = 0
        }
        
        if A
        {
            frameIndex = 4;t-= room_speed*0.15;
            pushed = true;instance_create(x,y-50,pRing)
            SetScale(1.1,0.9)
        }
        if pushed {ff++}
        if ff >= 3 {frameIndex = frameEnd-1;ff=0}
        
        if B {t = 0;SetState("idle")}
        
        if oInteractHitbox.target = "noone" and oInteractHitbox.targetID = 0
        {SetState("idle")}

    break;
    
    case "fixit":
        if frameIndex = 7
        {
            var obj = instance_create(x,y-120,pDollar)
            with (obj) {money = round(other.Mfix*global.Mmultipler*global.REPMULTIPLIER)};
            global.MONEY += round(Mfix*global.Mmultipler*global.REPMULTIPLIER)
            frameIndex = 8
        }
    break;
    
    case "fixFruit":
        STOP = true;
        if frameIndex = 7
        {
            var obj = instance_create(x,y-120,pDollar)
            with (obj) {money = round(other.Mfruit*global.Mmultipler*global.REPMULTIPLIER)};
            global.MONEY += round(Mfruit*global.Mmultipler*global.REPMULTIPLIER)
            frameIndex = 8
        }
    break;
    
    case "pickup":
        
        if itemID != 0
        {
        
        switch (spr)
        {
            case sPlayerPickL:  itemID.x = x-(55*side);itemID.y = y-35  break;
            case sPlayerPickU:  itemID.x = x;itemID.y = y-40;           break;
            case sPlayerPickD:  itemID.x = x;itemID.y = y+15;           break;
            case sPlayerPickDL: itemID.x = x-(50*side);itemID.y = y-25; break;
            case sPlayerPickUL: itemID.x = x-(30*side);itemID.y = y-30; break;
        }
        
        if spr = sPlayerPickD {itemID.depth = depth-2}
        else {itemID.depth = depth+2}
        }
        
        if A and itemID != 0
        {
            itemID.vspeed = Vy;itemID.hspeed = Vx
            itemID.pick = false
            itemID.f = 5
            itemID.y = y+2
            itemID.vspeed = 8
            item = "noone"
            SetState("idle")
            itemID = 0
        }
    break;
    
    case "cola":
        var pushed = false;
        STOP = true;
        if t <= 0
        {
            frameIndex = 0;SetState("washed");TaskComplete();frameIndex = 0
            SetGeneralTime(oInteractHitbox.targetID,choose(25,30,35,38))
            frameIndex = 0;
        }
        
        if instance_exists(oAndroidJoystick)
        {
            if oAndroidJoystick.joyMoveX > 80  and lero = 0 {t--;lero = 1}
            if oAndroidJoystick.joyMoveX < -80 and lero = 0 {t--;lero = 1}
            if oAndroidJoystick.joyMoveX > -60 and oAndroidJoystick.joyMoveX < 60 and lero = 1
            {lero = 0}
        }
        else
        {
            if Lp
            {
                frameIndex = 14;t-= 1;
                pushed = true;instance_create(x,y-50,pRing)
                SetScale(1.1,0.9)
            }
            if Rp
            {
                frameIndex = 6;t-= 1;
                pushed = true;instance_create(x,y-50,pRing)
                SetScale(1.1,0.9)
            }
        }
        if pushed {ff++}
        if ff >= 3 {frameIndex = frameEnd-1;ff=0}
        
        if B {t = 0;SetState("idle")}
        
        if oInteractHitbox.target = "noone" and oInteractHitbox.targetID = 0
        {SetState("idle")}

    break;
    
    case "washed":
        STOP = true;
        if frameIndex = 7
        {
            var obj = instance_create(x,y-120,pDollar)
            with (obj) {money = round(other.Mwash*global.Mmultipler*global.REPMULTIPLIER)};
            global.MONEY += round(Mwash*global.Mmultipler*global.REPMULTIPLIER)
            frameIndex = 8
        }
    break;
    
    case "boxDelivered":
        STOP = true;
        if frameIndex = 7
        {
            var obj = instance_create(x,y-120,pDollar)
            with (obj) {money = round(other.MboxDelivery*global.Mmultipler*global.REPMULTIPLIER)};
            global.MONEY += round(MboxDelivery*global.Mmultipler*global.REPMULTIPLIER)
            frameIndex = 8
        }
    break;
    
    default: SetState("idle");
}
 

///Rotate and sprite manager

var notInIdle = (spr = sPlayerD || spr = sPlayerU || spr = sPlayerL || spr = sPlayerUL || spr = sPlayerDL)
var notInGrab = (spr = sPlayerD || spr = sPlayerU || spr = sPlayerL || spr = sPlayerUL || spr = sPlayerDL)



switch (state)
{
    case "start": 
        loop = true
        play = true
        SetSprite(sPlayerD);
    break;    

    case "idle": 
        loop = true
        play = true
        SetEmotion("def")
        
        // Reset anim in case not touching nothing
        if !notInIdle and state = "idle"
        {
            switch (spr)
            {
                case sPlayerLrun: SetSprite(sPlayerL);; break;
                case sPlayerUrun: SetSprite(sPlayerU);; break;
                case sPlayerDrun: SetSprite(sPlayerD);; break;
                case sPlayerDLrun: SetSprite(sPlayerDL);; break;
                case sPlayerULrun: SetSprite(sPlayerUL);; break;
                default: SetSprite(sPlayerD);
            }
            frameEnd = 15
        }
        else {frameEnd = 19}
        
        // Directions
        if R //> 0
        {spr = sPlayerLrun;side = -1}
        
        if L //< 0
        {spr = sPlayerLrun;side = 1}
        
        if U //< 0
        {spr = sPlayerUrun;side = 1}
        
        if D //> 0
        {spr = sPlayerDrun;side = 1}
        
        // More directions
        
        if R  and D 
        {spr = sPlayerDLrun;side = -1}
        
        if R  and U 
        {spr = sPlayerULrun;side = -1}
        
        if L  and D 
        {spr = sPlayerDLrun;side = 1}
        
        if L  and U 
        {spr = sPlayerULrun;side = 1}
        
        // Don't  run
        
        if R and L 
        {spr = sPlayerD;side = 1;STOP = true;D=false;U=false}else {STOP = false;}
        
        if D and U 
        {spr = sPlayerD;side = 1;STOP = true;L=false;R=false}else {STOP = false;}
        
    break;
    
    case "fixit":
        side = 1
        frameEnd = 20
        loop = false
        SetSprite(sPlayerFixit)
        if frameIndex >= frameEnd-1{SetState("idle");SetSprite(sPlayerD);}
    break;
    
    case "fixFruit":
        //side = 1
        frameEnd = 20
        loop = false
        SetSprite(sPlayerFixit)
        if frameIndex >= frameEnd-1{SetState("idle");SetSprite(sPlayerD);}
    break;
    
    case "fixing":
        side = 1
        frameEnd = 12
        SetSprite(sPlayerFix)
    break;
    
    case "talk":
		
        switch (oCam.myTurn)
        {
            case true: 
                switch (emote)
                {
                    case "def": SetSprite(sPlayerTalk);frameEnd = 9; break;
                    
                    case "happy": SetSprite(sPlayerTalkHAPPY);frameEnd = 9; break;
                    
                    case "angry": SetSprite(sPlayerTalkANGRY);frameEnd = 9; break;
                    
                    case "sad": SetSprite(sPlayerTalkSAD);frameEnd = 9; break;
                    
                    default: SetSprite(sPlayerTalk);frameEnd = 9;
                }
            break;
            
            case false: SetSprite(sPlayerD);frameEnd = 19 break;
        }
         
    break;
    
    case "pickup": 
    
        frameEnd = 19
        if keyboard_check_released(global.A)
        {SetSprite(sPlayerPickD)}
        
        // Reset anim in case not touching nothing
        //if ! and state = "pickup"
        //{SetSprite(sPlayerPickD);}
        
        // Directions
        if R //> 0
        {spr = sPlayerPickL;side = -1}
        
        if L //< 0
        {spr = sPlayerPickL;side = 1}
        
        if U //< 0
        {spr = sPlayerPickU;side = 1}
        
        if D //> 0
        {spr = sPlayerPickD;side = 1}
        
        // More directions
        
        if R  and D 
        {spr = sPlayerPickDL;side = -1}
        
        if R  and U 
        {spr = sPlayerPickUL;side = -1}
        
        if L  and D 
        {spr = sPlayerPickDL;side = 1}
        
        if L  and U 
        {spr = sPlayerPickUL;side = 1}
    break;
    
    case "cola":
        side = 1
        frameEnd = 15
        SetSprite(sPlayerWash)
    break;
    
    case "washed":
        side = 1
        frameEnd = 13
        loop = false
        SetSprite(sPlayerWashEnd)
        if frameIndex >= frameEnd-1{SetState("idle");SetSprite(sPlayerD);}
    break;
    
    case "boxDelivered":
        //side = 1
        frameEnd = 20
        loop = false
        SetSprite(sPlayerFixit)
        if frameIndex >= frameEnd-1{SetState("idle");SetSprite(sPlayerD);}
    break;
    
    case "win":
        side = 1
        frameEnd = 20
        loop = false
        SetSprite(sPlayerFixit)
    break;
}
 


