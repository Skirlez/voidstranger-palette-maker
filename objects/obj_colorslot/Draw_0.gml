if changing == true {
	draw_set_color(c_black)
	draw_line_width(x - 1, y, global.colorpicker.x - 1, global.colorpicker.y, 10)
	if myreset != noone {
		draw_line_width(x - 1, y, myreset.x - 1, myreset.y, 8)
	}
}

draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, clr, 1)