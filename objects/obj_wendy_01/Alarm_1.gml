// ATAQUE DE WENDY
if random(2) > 1{
	atk = 1 //Hacha
}	else	
if random(2) > 1{
	atk = 2	//Corazonez
}	else	
{
	atk = 3 //Diamante
}

// APARICION DE ENEMIGOS
if hp < 140{
	if random(2) > 0.8{
		instance_create_depth(random_range(196, 480), -92, depth-1, obj_enemie01w)
	}
}

if atk == 1{
	sprite_index = attack1{
	image_speed = 1		
	speed = 3
	direction = 180
	image_xscale = 1.2
	image_yscale = 0.8
	}
}

if atk == 2{
	sprite_index = attack2{
	image_speed = 1		
	speed = 2
	direction = 180
	image_xscale = 1.2
	image_yscale = 0.8
	}
}

if atk == 3{
	sprite_index = attack3{
	image_speed = 1		
	image_xscale = 1.2
	image_yscale = 0.8
	}
}