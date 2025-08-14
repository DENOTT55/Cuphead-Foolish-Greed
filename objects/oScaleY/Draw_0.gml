draw_self()

draw_set_halign(fa_center);draw_set_valign(fa_middle)

switch (type) {
    case "plus":
        draw_text(x,y-5,"+")
    break;
	
	case "minus":
        draw_text(x,y-5,"-")
    break;
}

draw_set_halign(fa_left);draw_set_valign(fa_top)