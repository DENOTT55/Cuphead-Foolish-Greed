layer_x(id_front,	lerp(0,	camera_get_view_x(view_camera[0]),	frontspd))
layer_x(id_back,	lerp(0,	camera_get_view_x(view_camera[0]),	back01spd))
layer_x(id_back02,	lerp(0,	camera_get_view_x(view_camera[0]),	back02spd))
if layer_exists(layer_get_id("bk_back03"))
{layer_x(layer_get_id("bk_back03"),	lerp(0,	camera_get_view_x(view_camera[0]),	back03spd))}