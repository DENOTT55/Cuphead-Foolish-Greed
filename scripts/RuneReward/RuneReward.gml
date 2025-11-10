/// @description RuneReward()
function RuneReward() {
	
	/*	  - - - Example - - - 
	
	if code = CODES[0] 
	{
		// Do thing
	}
	
	*/  //- - - Example - - - 
	
	if code = CODES[1] // CODIGO: 34210
	{
		instance_create_layer(x,y,"Transition",obj_transition)
		audio_play_sound(snd_enterlevel,10,false,1.4,0,random_range(0.7,1.1))
		obj_runeDisplay.name = "dralabaza"
		//UnlockArchivement(1,"Pinches Runas","Ya funciona pero joder#que dolor de cabeza",false)
	}
	
	if code = CODES[2] // CODIGO: 01234
	{
		
	}
}
