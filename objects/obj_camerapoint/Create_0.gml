camspeed = 0.3
image_alpha = 0
image_speed = 1
skin = spr_runas_cursor;

runeMenu = false
codeExist = false

code = "00000"

CODES = [
	"", // START
	"43210", // Unlock: ...
	"34210", // Unlock: ...
	"01234", // Unlock: ...
	
]

runePos[0] = 0
runePos[1] = 0
runePos[2] = 0
runePos[3] = 0
runePos[4] = 0
runePos[5] = 0

rgb = 255
n = 0

multiply = 38*4

curPosX = 0
curPos = 0
order = 0

runePosX[0] = 0; runePosY[0] = 360+(360/1.5)
runePosX[1] = 0; runePosY[1] = 360+(360/1.5)
runePosX[2] = 0; runePosY[2] = 360+(360/1.5)
runePosX[3] = 0; runePosY[3] = 360+(360/1.5)
runePosX[4] = 0; runePosY[4] = 360+(360/1.5)

runeSlot[0] = -1
runeSlot[1] = -1
runeSlot[2] = -1
runeSlot[3] = -1
runeSlot[4] = -1
runeSlot[5] = -1

for (var i = 0; i < 5; ++i) {
		var num = i-2;
		
		runePos[i] = 640+(multiply*num);
		
		runePosX[i] = runePos[i];
}

runePos[5] = 640;

runeNewPosX[0] = runePos[0]
runeNewPosX[1] = runePos[1]
runeNewPosX[2] = runePos[2]
runeNewPosX[3] = runePos[3]
runeNewPosX[4] = runePos[4]

rune[0] = runePos[0];
rune[1] = runePos[1];
rune[2] = runePos[2];
rune[3] = runePos[3];
rune[4] = runePos[4]

goY = 360*2
alpha = 0.4