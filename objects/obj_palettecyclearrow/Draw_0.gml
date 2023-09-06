draw_self()
if image_xscale > 0 {
	draw_set_color(c_white)
	draw_set_font(font_fixedsys)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(x + 32, y - 32, "Default Palette:")
	draw_text(x + 32, y, global.palette)
	var str = global.palette == 777 ? global.palettename : "\"" + global.palettename + "\""
	draw_text(x + 32, y + 32, str)
}