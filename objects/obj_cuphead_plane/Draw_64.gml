if enable == 1{
draw_sprite(spr_hpbar,vida,vidaX,vidaY)

if cards == 1{
	draw_sprite(spr_card,0,cardsX[0],cardsY)
}

if cards == 2{
	draw_sprite(spr_card,0,cardsX[0],cardsY)
	draw_sprite(spr_card,0,cardsX[1],cardsY)
}

if cards == 3{
	draw_sprite(spr_card,0,cardsX[0],cardsY)
	draw_sprite(spr_card,0,cardsX[1],cardsY)
	draw_sprite(spr_card,0,cardsX[2],cardsY)
}

if cards == 4{
	draw_sprite(spr_card,0,cardsX[0],cardsY)
	draw_sprite(spr_card,0,cardsX[1],cardsY)
	draw_sprite(spr_card,0,cardsX[2],cardsY)
	draw_sprite(spr_card,0,cardsX[3],cardsY)
}

if cards == 5{
	draw_sprite(spr_card,1,cardsX[0],cardsY)
	draw_sprite(spr_card,1,cardsX[1],cardsY)
	draw_sprite(spr_card,1,cardsX[2],cardsY)
	draw_sprite(spr_card,1,cardsX[3],cardsY)
	draw_sprite(spr_card,1,cardsX[4],cardsY)
}
}