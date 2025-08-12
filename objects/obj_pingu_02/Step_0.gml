if (!place_meeting(x, y + 1, obj_collision))
    {
        gravity = 0.5
		gravity_direction = -90
	}	else	{
		gravity = 0}
		
if distance_to_object(obj_cuphead_player) < 200 {
	if audio_is_playing(snd_pingu_drums) == false{
	audio_play_sound(snd_pingu_drums,11,true)}			
}	else {
	audio_stop_sound(snd_pingu_drums)		
}

if distance_to_object(obj_pingu_01) < 100{
if act == 0 {
	if distance_to_object(obj_pingu_01) > distance{
		act = 1	
		if obj_pingu_01.x < x{
		hspeed = -2
		image_xscale = 1}
		if obj_pingu_01.x > x{
		hspeed = 2
		image_xscale = -1}
		alarm_set(0,10)
	}
}}
else
{
	if act <= 2{
	act = 3}
}

if act == 3 && distance_to_object(obj_cuphead_player) < 300{
	act = 4
		if obj_cuphead_player.x < x{
			hspeed = -4
			image_xscale = 1}
		if obj_cuphead_player.x > x{
			hspeed = 4
			image_xscale = -1}
	alarm_set(2,10)
}