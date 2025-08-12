hp -= 1
image_alpha = 0.6
alarm_set(11,4)
if hp < 1 {
	instance_destroy()	
}