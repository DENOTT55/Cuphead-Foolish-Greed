if image_alpha < 1{
	image_alpha += 0.1	
}

if die == 0 {
if act == 1 {
	if movement == 0{
		if hspeed < 5{
			hspeed += 0.1}	
	}	else	{
		if hspeed > -5{
			hspeed -= 0.1}
	}
	
	if x > 474{
		movement = 1	
	}
	
	if x < 200{
		movement = 0
	}
}}