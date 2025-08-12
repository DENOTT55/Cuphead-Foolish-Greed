if speed > 0 {
	speed -= 0.1
}

if image_xscale > 1{
	image_xscale -= 0.02
	image_yscale += 0.02
}

if act == 2 {
	act = 3
	alarm_set(1,random_range(75,95))
}