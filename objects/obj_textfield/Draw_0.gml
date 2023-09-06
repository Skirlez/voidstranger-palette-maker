if line and instance_exists(global.colorpicker)
	draw_line_width(x, y, global.colorpicker.x, global.colorpicker.y, 5)

var blend
if selected
	blend = c_white
else
	blend = c_grey
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, blend, 1)
draw_set_color(c_black)
draw_set_font(font_fixedsys)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if instance_exists(global.colorpicker) {
	draw_text(x, y, global.textfield[textid])
	if mode == 0
		draw_text(x, y - 16, char1)
	else
		draw_text(x, y - 16, char2)
}

