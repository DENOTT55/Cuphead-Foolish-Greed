/// @description CreateAndroidControls()
function CreateAndroidControls() 
{
	if os_type != os_android {exit}
	
	if !layer_exists("AndroidControls")
	{layer_create(-999,"AndroidControls")}
	
	instance_create_layer(-300, -300, "AndroidControls", oAndroidButton1);
	instance_create_layer(-300, -300, "AndroidControls", oAndroidButton2);
	instance_create_layer(-300, -300, "AndroidControls", oAndroidButtonLeft);
	instance_create_layer(-300, -300, "AndroidControls", oAndroidButtonRight);
	instance_create_layer(-300, -300, "AndroidControls", oAndroidButtonUp);
	instance_create_layer(-300, -300, "AndroidControls", oAndroidButtonDown);
	
}
