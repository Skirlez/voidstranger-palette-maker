draw_self()
if image_xscale > 0 {
	draw_set_color(image_blend)
	draw_set_font(font_fixedsys)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(x + 32, y, obj_preview.image_index + 1)
	draw_text(x + 32, y + 24, "Preview image")
}