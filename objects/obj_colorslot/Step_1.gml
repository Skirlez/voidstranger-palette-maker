if update == true {
	clr = make_color_rgb(global.palette_array[colornum][0] * 255, global.palette_array[colornum][1] * 255, global.palette_array[colornum][2] * 255)
	defaultclr = clr
	
	colorhue = color_get_hue(clr)
	colorsaturation = color_get_saturation(clr)
	colorvalue = color_get_value(clr)

	update = false	
}
