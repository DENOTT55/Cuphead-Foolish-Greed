direction = point_direction(x,y,obj_cuphead_plane.x,obj_cuphead_plane.y)
speed = 12
image_angle = direction
image_alpha = 0
alarm_set(0,5)
audio_play_sound(snd_wendyshot,10,false,1,0,random_range(0.7,1.1))