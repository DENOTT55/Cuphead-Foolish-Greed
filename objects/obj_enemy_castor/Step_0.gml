if global.PAUSE = true {x = xprevious;exit}

if act == 0{
if distance_to_object(obj_cuphead_player) < 460 {
	act = 1	
}}

if act == 1 {
	alarm_set(0,random_range(30,60))
	act = 2		
}