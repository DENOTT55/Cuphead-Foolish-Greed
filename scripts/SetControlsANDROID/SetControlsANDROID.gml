/// @description SetControlsANDROID()
function SetControlsANDROID() {
	ini_open("AndroidControls.ini")
	//-------- SAVE --------------

	//JUMP
	global.abAx  = ini_read_real("A","X",640*2-(95*1.5))
	global.abAy  = ini_read_real("A","Y",360*2-(95*2.8))
	global.abASx  = ini_read_real("A","Scale X",1)
	global.abASy  = ini_read_real("A","Scale Y",1)
	
	//SHOOT
	global.abBx  = ini_read_real("B","X",640*2-(95*2.1))
	global.abBy  = ini_read_real("B","Y",360*2-(95*1.2))
	global.abBSx  = ini_read_real("B","Scale X",1)
	global.abBSy  = ini_read_real("B","Scale Y",1)
	
	//LEFT
	global.abLx  = ini_read_real("LEFT","X",640*2-(95*1.5))
	global.abLy  = ini_read_real("LEFT","Y",360*2-(95*2.8))
	global.abLSx  = ini_read_real("LEFT","Scale X",1)
	global.abLSy  = ini_read_real("LEFT","Scale Y",1)

	//RIGHT
	global.abRx  = ini_read_real("RIGHT","X",640*2-(95*2.1))
	global.abRy  = ini_read_real("RIGHT","Y",360*2-(95*1.2))
	global.abRSx  = ini_read_real("RIGHT","Scale X",1)
	global.abRSy  = ini_read_real("RIGHT","Scale Y",1)

	global.joystickAlpha  = ini_read_real("STICK","ALPHA",0.8)

	//----------------------------
	ini_close()


}
