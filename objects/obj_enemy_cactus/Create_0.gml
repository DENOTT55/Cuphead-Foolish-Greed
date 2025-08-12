parryable = 0
image_speed = 0.80
hp = 3
image_index = random_range(0,5)
if (random(10) >= 4){
	parryable = 1
	sprite_index = spr_cactus_running_parry
}