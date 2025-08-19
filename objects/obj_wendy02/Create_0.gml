alarm_set(0,90)
hp = 240
image_speed = 0
act = 0
atk = 0
xx = x
yy = y
die = 0

bounce_speed = 0.003; // How fast the sprite scales
bounce_strength = 0.02;	// How much the sprite scales (the bounce strength)
base_scale = 1; // The default scale of the sprite

function unblock(){
	sprite_index = spr_wendy2_block
	image_index = 1
	image_speed = 0
	alarm_set(9,45)
	act = 8
}

alarm_set(10,random_range(80,120))