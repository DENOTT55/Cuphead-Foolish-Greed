/// @description SetControlsANDROID()
function SetControlsANDROID() {
	ini_open("AndroidControls.ini")
	//-------- SAVE --------------

	global.abAx  = ini_read_real("A","X",640*2-(95*1.5))
	global.abAy  = ini_read_real("A","Y",360*2-(95*2.8))
	global.abASx  = ini_read_real("A","Scale X",1)
	global.abASy  = ini_read_real("A","Scale Y",1)

	global.abBx  = ini_read_real("B","X",640*2-(95*2.1))
	global.abBy  = ini_read_real("B","Y",360*2-(95*1.2))
	global.abBSx  = ini_read_real("B","Scale X",1)
	global.abBSy  = ini_read_real("B","Scale Y",1)

	global.joystickAlpha  = ini_read_real("STICK","ALPHA",0.8)

	//----------------------------
	ini_close()

}
