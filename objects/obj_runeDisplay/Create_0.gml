odepth = depth
bounce_speed = 0.002; // How fast the sprite scales
bounce_strength = 0.02;	// How much the sprite scales (the bounce strength)
base_scale = 1; // The default scale of the sprite
act = 0
image_speed = 0.50
name = ""

ini_open("Save.ini")
global.kpause = ini_read_string("Player","kpause","vk_escape")
ini_close()