if clicked() {
	if image_index == 0 {
		play_sound(snd_button)
		with (obj_textfield) {
			mode = 1
			getcolor = true	
		}
		image_index = 1
	}
	else if image_index == 1 {
		with (obj_textfield) {
			mode = 0
			getcolor = true	
		}
		image_index = 0
		play_sound(snd_buttonlow)
	}
}

if instance_exists(global.colorpicker) {
	if image_index == 2
		image_index = obj_textfield.mode
	if update {
		var clr
		if image_index == 1
			clr = make_color_rgb(real(global.textfield[0]), real(global.textfield[1]), real(global.textfield[2]))
		else if image_index == 0
			clr = make_color_hsv(real(global.textfield[0]) * 255 / 360, real(global.textfield[1]) * 255 / 100, real(global.textfield[2]) * 255 / 100)
		reset_color(global.colorpicker.colorslot, clr)
		update = false
	}
}
else
	image_index = 2