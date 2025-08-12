if (place_meeting(x, y, obj_parryhitbox)) {
if parry == 0{
	instance_create_depth(x,y,0,obj_parry_particle)
	parry = 1
	image_index = 1
	obj_cuphead_player.vspeed = -12
	obj_cuphead_player.estado = 2
	alarm_set(0,100)
	audio_play_sound(snd_cuphead_parry,10,false,random_range(0.8,1))
}	}

angle_time += angle_speed;

// Oscilar suavemente usando sin()
image_angle = sin(angle_time) * angle_range;