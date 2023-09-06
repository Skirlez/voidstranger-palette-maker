draw_self()
if displaytexttimer > 0 {
	draw_set_color(c_black)
	draw_set_font(font_fixedsys)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	var dx = 380
	var str
	switch (drawstring) {
		case 0:
			str = "You must have\na palette copied\nto your clipboard!"
			dx = 360
			break;
		case 1:
			str = "Import\nsuccessful!"
			break;
	}
	draw_text(dx, 30, str)
	displaytexttimer -= 1	
}