if act == 2{
	x -= 12 
	sprite_index = spr_wendy2_idle
	image_speed = 1
	act = 3
	vspeed = 0
	alarm_set(2,45)
}

if act == 4{
	image_index = 4
	image_speed = 0
	act = 5
	alarm_set(4,90)
}

if act == 6{
	act = 7
	sprite_index = spr_wendy2_idle
	alarm_set(8,30)
}