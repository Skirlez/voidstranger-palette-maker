
function reset_color(colorslot, color) {
	colorslot.clr = color
	instance_destroy(colorslot.myreset)
	colorslot.myreset = noone
	with (global.colorpicker) {
		var hue = color_get_hue(color)
		colorslot.colorhue = hue
		hue *= 360 / 255
		var saturation = color_get_saturation(color)
		colorslot.colorsaturation = saturation
		saturation = 100 - saturation * 100 / 255
		colorpick_x = x - sprite_width * image_xscale + hue * image_xscale
		colorpick_y = y - sprite_height * image_yscale + saturation * image_yscale
	}
	with (global.colorpicker.colorvalue_picker) {
		var value = color_get_value(color)
		colorslot.colorvalue = value
		value = 100 - value * 100 / 255
		slider_y = y - sprite_height * image_xscale + value * image_xscale
	}
}