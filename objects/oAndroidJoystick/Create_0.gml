/// @description Vars

joyAncorX = 40
joyAncorY = 220
joyActive = false
joyMoveX = 0
joyMoveY = 0

t = 0

ini_open("AndroidControls.ini")
global.joystickAlpha  = ini_read_real("STICK","ALPHA",0.8)
ini_close()

alpha = global.joystickAlpha

