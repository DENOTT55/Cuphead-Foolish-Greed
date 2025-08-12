alarm_set(0,80)
dis = 0
image_speed = 1
image_alpha = 0
y = obj_cuphead_player.y
if (random(2) >= 1){
	x = obj_cuphead_player.x - 320	
	image_xscale = -1
} else {
	x = obj_cuphead_player.x + 320	
}

