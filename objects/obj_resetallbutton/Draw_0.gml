draw_self()
if instance_exists(obj_confirm_reset) {
	draw_set_color(c_black)
	draw_set_font(font_fixedsys)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(x, y + 48, "Are you sure\nyou want to\nreset the\ncolors?")
}