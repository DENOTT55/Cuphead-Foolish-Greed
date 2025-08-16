/// @description SetControlsANDROID()
function SetControlsANDROID() {
	ini_open("AndroidControls.ini")
	//-------- SAVE --------------

	//JUMP
	global.abAx  = ini_read_real("A","X",1094)
	global.abAy  = ini_read_real("A","Y",489)
	global.abASx  = ini_read_real("A","Scale X",1)
	global.abASy  = ini_read_real("A","Scale Y",1)
	
	//SHOOT
	global.abBx  = ini_read_real("B","X",964)
	global.abBy  = ini_read_real("B","Y",570)
	global.abBSx  = ini_read_real("B","Scale X",1)
	global.abBSy  = ini_read_real("B","Scale Y",1)
	
	//LEFT
	global.abLx  = ini_read_real("LEFT","X",71)
	global.abLy  = ini_read_real("LEFT","Y",467)
	global.abLSx  = ini_read_real("LEFT","Scale X",1)
	global.abLSy  = ini_read_real("LEFT","Scale Y",1)

	//RIGHT
	global.abRx  = ini_read_real("RIGHT","X",214)
	global.abRy  = ini_read_real("RIGHT","Y",467)
	global.abRSx  = ini_read_real("RIGHT","Scale X",1)
	global.abRSy  = ini_read_real("RIGHT","Scale Y",1)
	
	//UP
	global.abUx  = ini_read_real("UP","X",142.50)
	global.abUy  = ini_read_real("UP","Y",390)
	global.abUSx  = ini_read_real("UP","Scale X",1)
	global.abUSy  = ini_read_real("UP","Scale Y",1)

	//DOWN
	global.abDx  = ini_read_real("DOWN","X",142.5)
	global.abDy  = ini_read_real("DOWN","Y",534)
	global.abDSx  = ini_read_real("DOWN","Scale X",1)
	global.abDSy  = ini_read_real("DOWN","Scale Y",1)
	
	//EX
	global.abEXx  = ini_read_real("EX","X",1164)
	global.abEXy  = ini_read_real("EX","Y",283)
	global.abEXSx  = ini_read_real("EX","Scale X",1)
	global.abEXSy  = ini_read_real("EX","Scale Y",1)
	
	//LOCK
	global.abLOCKx  = ini_read_real("LOCK","X",823)
	global.abLOCKy  = ini_read_real("LOCK","Y",522)
	global.abLOCKSx  = ini_read_real("LOCK","Scale X",1)
	global.abLOCKSy  = ini_read_real("LOCK","Scale Y",1)
	
	//DASH
	global.abDASHx  = ini_read_real("DASH","X",942)
	global.abDASHy  = ini_read_real("DASH","Y",426)
	global.abDASHSx  = ini_read_real("DASH","Scale X",1)
	global.abDASHSy  = ini_read_real("DASH","Scale Y",1)
	
	//SWITCH
	global.abSWITCHx  = ini_read_real("SWITCH","X",15)
	global.abSWITCHy  = ini_read_real("SWITCH","Y",15)
	global.abSWITCHSx  = ini_read_real("SWITCH","Scale X",1)
	global.abSWITCHSy  = ini_read_real("SWITCH","Scale Y",1)

	global.abAlpha  = ini_read_real("BUTTONS","ALPHA",0.8)
	
	//global.joystickAlpha  = ini_read_real("STICK","ALPHA",0.8)

	//----------------------------
	ini_close()


}
