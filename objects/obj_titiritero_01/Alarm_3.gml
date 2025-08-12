if die == 0 {
image_yscale = 0.8
image_xscale = 1.2
act = 2 
hspeed = 0
sprite_index = spr_boss01_prepare
image_speed = 0.80
if (random(3) >= 1.5)
{
	if instance_number(obj_clone_titiritero) == 0{
	nattack = 4	}	else	{
	nattack = 3	
	}
}	else 
if (random(2) >= 1)
{
	nattack = 1
}	else
if (random(2) >= 1)
{
	nattack = 2
}	else
{
	nattack = 3
}
alarm_set(4,60)
}

if (random(5) >= 2)
{
	instance_create_layer(716,304,"Instances_2",obj_payasito_back)	
}