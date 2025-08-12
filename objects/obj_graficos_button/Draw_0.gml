draw_self()
if global.graficos == 0 {
	draw_set_font(level_letter_font)
	draw_text(x+296,y,"Alta Calidad")
	draw_set_font(level_letter_font_1)
	draw_text(x+296,y+32,"Puede afectar el rendimiento en algunos dispositivos")
}

if global.graficos == 1 {
	draw_set_font(level_letter_font)
	draw_text(x+296,y,"Baja Calidad")
}