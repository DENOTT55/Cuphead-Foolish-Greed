/// @description Vars

V = global.VEL
switch (global.EXTRAVEL) 
{
	case 1: V = global.VEL+1.8 break;
	case 2: V = global.VEL+2.3 break;
	case 3: V = global.VEL+2.8 break;
}

frameShadow = 1
CreateAndroidControls()

Vx = 0
Vy = 0
VxMaxDef = 8
VyMaxDef = 8
VxMax = VxMaxDef+V
VyMax = VyMaxDef+V
Vmultipler = 1

Vxalt = VxMax+(V*Vmultipler)
Vyalt = VyMax+(V*Vmultipler)

fricc = 0.25//0.1
FREE = true
STOP = false
spr = sPlayerD
side = 1
emote = "def"
Xscale = 1
Yscale = 1
/*
"idle" - "talk" - "fixing" - "deliver"
"wait" - "washing"
"dinner" - "stun"
"tired" - "endTurn"
*/
t = 0
ff = 0
state = "idle"

item = "noone"
itemID = 0

//pause
n = 0;
nMax = 2;

SetAnimVars()

frameIndex = 0
frameRate = 24//*2
loop = true
frameEnd = 19
play = true

L   = keyboard_check(global.LEFT) || keyboard_check(global.LEFTalt)
R   = keyboard_check(global.RIGHT) || keyboard_check(global.RIGHTalt)
U   = keyboard_check(global.UP) || keyboard_check(global.UPalt)
D   = keyboard_check(global.DOWN) || keyboard_check(global.DOWNalt)

Up   = keyboard_check_pressed(global.UP) || keyboard_check_pressed(global.UPalt)
Dp   = keyboard_check_pressed(global.DOWN) || keyboard_check_pressed(global.DOWNalt)

A   = keyboard_check_pressed(global.A)
B   = keyboard_check_pressed(global.B) || keyboard_check_pressed(global.BACK) ||keyboard_check_pressed(global.BACKalt)
P   = keyboard_check_pressed(global.PAUSE)

instance_create(x,y,oCam)
instance_create(x,y,oInteractHitbox)


/* */
///Money Vars

switch (global.EXTRAMONEY) {
    case 1: mutimoney = 1.2 break;
	case 2: mutimoney = 1.4 break;
	case 3: mutimoney = 1.6 break;
	case 4: mutimoney = 1.8 break;
	case 5: mutimoney = 2   break;
	case 6: mutimoney = 2.2 break;
    default: mutimoney = 1 break;
}
Mfix = round(230*mutimoney)
Mfruit = round(190*mutimoney)
Mwash = round(90*mutimoney)
MboxDelivery = round(250*mutimoney)


lero = 0

/* */
/*  */
