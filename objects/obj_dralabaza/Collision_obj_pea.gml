if state != "die" and invencible = false
{
hp -= 1
image_alpha = 0.6
}

other.hp -= 1
if other.hp <	1{
	instance_destroy(other)
}