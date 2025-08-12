if enable == 1{
draw_sprite(spr_hpbar,vida,32,646)

if cards == 1{
	draw_sprite(spr_card,0,100+20,646)
}

if cards == 2{
	draw_sprite(spr_card,0,100+20,646)
	draw_sprite(spr_card,0,125+20,646)
}

if cards == 3{
	draw_sprite(spr_card,0,100+20,646)
	draw_sprite(spr_card,0,125+20,646)
	draw_sprite(spr_card,0,150+20,646)
}

if cards == 4{
	draw_sprite(spr_card,0,100+20,646)
	draw_sprite(spr_card,0,125+20,646)
	draw_sprite(spr_card,0,150+20,646)
	draw_sprite(spr_card,0,175+20,646)
}

if cards == 5{
	draw_sprite(spr_card,1,100+20,646)
	draw_sprite(spr_card,1,125+20,646)
	draw_sprite(spr_card,1,150+20,646)
	draw_sprite(spr_card,1,175+20,646)
	draw_sprite(spr_card,1,200+20,646)
}
}