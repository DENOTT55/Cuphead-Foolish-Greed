if act == 3{
instance_create_depth(x,y,0,obj_digging_particle)
act = 4
image_alpha = 0
yy = y
y = y + 120
alarm_set(1,random_range(50,80))
xx = x + random_range(-32,32)

}