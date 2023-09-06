draw_self()
if displaytexttimer > 0 {
	draw_set_color(c_black)
	draw_set_font(font_fixedsys)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(380, 30, "Copied to\nclipboard!")
	displaytexttimer -= 1	
}