draw_self()

draw_set_halign(fa_center);draw_set_valign(fa_middle)

draw_text(x,y-5,"Volver\nal menu")

draw_text((room_width/2),oAlpha.y-80,	"Visibilidad (Aplica para todo)")

draw_text((room_width/2),oScaleX.y-45,	"Escala")

draw_text((room_width/2),oScaleX.y,	"Escala X: "+string(itemID.ssx))
draw_text((room_width/2),oScaleY.y, "Escala Y: "+string(itemID.ssy))

draw_text((room_width/2),oAlpha.y, "Alpha: "+string(global.abAlpha))

draw_set_halign(fa_left);draw_set_valign(fa_top)

if (itemID.flecha = true)
{index = 1;indexR = itemID.image_angle;sprite = sButton_1}
else
{index = 8;indexR = 0;sprite = sButton}

draw_sprite_ext(sprite,index,itemID.X+(itemID.Sx/2),itemID.Y+(itemID.Sx/2),itemID.ssx*1.2,itemID.ssy*1.2,indexR,c_white,1)