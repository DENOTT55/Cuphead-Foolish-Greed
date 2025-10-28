draw_self()

if showHitbox = true
{
	draw_set_alpha(0.8)
	draw_sprite(hitbox,0,x,y)
	draw_set_alpha(1)
}


/*
draw_text(x,y,t)
draw_text(x,y+40,state)