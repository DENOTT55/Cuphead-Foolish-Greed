if random(2) > 1{
if instance_number(obj_wendysouls) < 2	{
instance_create_depth(x,y,depth-1,obj_wendysouls)
}}
alarm_set(10,random_range(120,240))