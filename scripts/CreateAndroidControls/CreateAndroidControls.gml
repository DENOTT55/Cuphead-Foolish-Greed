/// @description CreateAndroidControls()
/// @param {bool} allControls
/// @param {bool} Joystick
function CreateAndroidControls(argument0 = false,argument1 = false) 
{
	//if os_type != os_android {exit}
	
	if !layer_exists("AndroidControls")
	{layer_create(-999,"AndroidControls")}
	
	instance_create_layer(-300, -300, "AndroidControls", oAndroidButton1);
	instance_create_layer(-300, -300, "AndroidControls", oAndroidButton2);
	instance_create_layer(-300, -300, "AndroidControls", oAndroidButtonLeft);
	instance_create_layer(-300, -300, "AndroidControls", oAndroidButtonRight);
	instance_create_layer(-300, -300, "AndroidControls", oAndroidButtonUp);
	instance_create_layer(-300, -300, "AndroidControls", oAndroidButtonDown);
	
	if argument0 = true
	{
		instance_create_layer(-300, -300, "AndroidControls", oAndroidButtonEx);
		instance_create_layer(-300, -300, "AndroidControls", oAndroidButtonLock);
		instance_create_layer(-300, -300, "AndroidControls", oAndroidButtonDash);
		instance_create_layer(-300, -300, "AndroidControls", oAndroidButtonSwitch);
		//instance_create_layer(-300, -300, "AndroidControls", oAndroidButtonPause);
	}
	
	if argument1 = true
	{
		instance_create_layer(-300, -300, "AndroidControls", oAndroidJoystick);
		virtual_key_delete(global.abL)
		virtual_key_delete(global.abR)
		virtual_key_delete(global.abU)
		virtual_key_delete(global.abD)
		instance_destroy(oAndroidButtonLeft)
		instance_destroy(oAndroidButtonRight)
		instance_destroy(oAndroidButtonUp)
		instance_destroy(oAndroidButtonDown)
	}
	
}
