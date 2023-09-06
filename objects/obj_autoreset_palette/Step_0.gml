if clicked() {
	if image_index == 1 {
		with (obj_palettecyclearrow)
			autoreset = true
		image_index = 0	
		play_sound(snd_button)
	}
	else {
		with (obj_palettecyclearrow)
			autoreset = false
		image_index = 1
		play_sound(snd_buttonlow)
	}
	
}