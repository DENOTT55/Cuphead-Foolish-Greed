entrance = 0
act = 0 // Tiempo de enfriamiento antes de interactuar
alarm_set(0,80)
image_alpha = 0
bossHp = 1
csiluette = 476
csiluetteGoTo = 0
image_speed = 0
audio_stop_sound(the_big_show_m)
audio_stop_sound(monte_caotic_m)
audio_stop_sound(winter_hunt_m)
audio_stop_sound(snowvalley_m)

actualBoss = 0
song = 0
endScreen = 0
endText = 0
cup = 0

#region Custom Animation Control Vars
	frameRate = 10
	frameIndex = 0
	frameEnd = 7
	loop = true
	FPS = 0;
	play = true;
#endregion