if clicked() {
	if !window_get_fullscreen() {
		image_index = 0
		window_set_fullscreen(true)
		play_sound(snd_button)
	}
	else {
		image_index = 1
		window_set_fullscreen(false)
		play_sound(snd_buttonlow)
	}
	
}