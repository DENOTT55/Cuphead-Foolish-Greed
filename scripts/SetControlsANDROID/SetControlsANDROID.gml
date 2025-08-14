/// @description SetControlsANDROID()
function SetControlsANDROID() {
	ini_open("AndroidControls.ini")
	//-------- SAVE --------------

	//JUMP
	global.abAx  = ini_read_real("A","X",1118)
	global.abAy  = ini_read_real("A","Y",457)
	global.abASx  = ini_read_real("A","Scale X",1)
	global.abASy  = ini_read_real("A","Scale Y",1)
	
	//SHOOT
	global.abBx  = ini_read_real("B","X",1005)
	global.abBy  = ini_read_real("B","Y",552)
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
	
	//EX
	global.abEXx  = ini_read_real("EX","X",1037)
	global.abEXy  = ini_read_real("EX","Y",702)
	global.abEXSx  = ini_read_real("EX","Scale X",1)
	global.abEXSy  = ini_read_real("EX","Scale Y",1)
	
	//LOCK
	global.abLOCKx  = ini_read_real("LOCK","X",906)
	global.abLOCKy  = ini_read_real("LOCK","Y",448)
	global.abLOCKSx  = ini_read_real("LOCK","Scale X",1)
	global.abLOCKSy  = ini_read_real("LOCK","Scale Y",1)
	
	//DASH
	global.abDASHx  = ini_read_real("DASH","X",1005)
	global.abDASHy  = ini_read_real("DASH","Y",344)
	global.abDASHSx  = ini_read_real("DASH","Scale X",1)
	global.abDASHSy  = ini_read_real("DASH","Scale Y",1)
	
	//SWITCH
	global.abSWITCHx  = ini_read_real("SWITCH","X",20)
	global.abSWITCHy  = ini_read_real("SWITCH","Y",20)
	global.abSWITCHSx  = ini_read_real("SWITCH","Scale X",1)
	global.abSWITCHSy  = ini_read_real("SWITCH","Scale Y",1)

	//global.joystickAlpha  = ini_read_real("STICK","ALPHA",0.8)

	//----------------------------
	ini_close()


}
