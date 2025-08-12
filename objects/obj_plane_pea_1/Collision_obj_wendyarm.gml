image_speed = 1.50
if hspeed >= 6{
	hspeed = 0
	instance_create_depth(x,y,depth-1,obj_biteparticle)
	hp -= 1
}
if hp <	1{
	instance_destroy()
}