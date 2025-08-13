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
	global.abLx  = ini_read_real("LEFT","X",95)
	global.abLy  = ini_read_real("LEFT","Y",360*2-(95*1.2))
	global.abLSx  = ini_read_real("LEFT","Scale X",1)
	global.abLSy  = ini_read_real("LEFT","Scale Y",1)

	//RIGHT
	global.abRx  = ini_read_real("RIGHT","X",95*2)
	global.abRy  = ini_read_real("RIGHT","Y",360*2-(95*1.2))
	global.abRSx  = ini_read_real("RIGHT","Scale X",1)
	global.abRSy  = ini_read_real("RIGHT","Scale Y",1)
	
	//UP
	global.abUx  = ini_read_real("UP","X",95*1.5)
	global.abUy  = ini_read_real("UP","Y",360*2-(95*1.2)-96)
	global.abUSx  = ini_read_real("UP","Scale X",1)
	global.abUSy  = ini_read_real("UP","Scale Y",1)

	//DOWN
	global.abDx  = ini_read_real("DOWN","X",95*1.5)
	global.abDy  = ini_read_real("DOWN","Y",360*2-(95*1.2)+96)
	global.abDSx  = ini_read_real("DOWN","Scale X",1)
	global.abDSy  = ini_read_real("DOWN","Scale Y",1)

	global.joystickAlpha  = ini_read_real("STICK","ALPHA",0.8)

	//----------------------------
	ini_close()


}
