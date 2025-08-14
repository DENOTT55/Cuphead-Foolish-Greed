image_speed = 0;image_index = 0

MAPWEAPONS = virtual_key_add(1080,0,1280,96,global.kdash)
virtual_key_show(MAPWEAPONS)


if os_type != os_android {virtual_key_delete(MAPWEAPONS);instance_destroy()}