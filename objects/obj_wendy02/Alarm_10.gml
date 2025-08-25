if random(2) > 1{
if instance_number(obj_wendysouls) < 2	{
instance_create_depth(x,y,depth-1,obj_wendysouls)
}}

if random(2) > 1{
if instance_number(obj_back3tree) < 2	{
instance_create_layer(x,y,"Back03",obj_back3tree)
}}

alarm_set(10,random_range(120,240))