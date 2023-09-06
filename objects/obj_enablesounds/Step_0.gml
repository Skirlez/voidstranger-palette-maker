if clicked() {
	if image_index == 0 {
		image_index = 1
		global.enablesounds = false
	}
	else {
		image_index = 0
		global.enablesounds = true
		play_sound(snd_button)
	}
	
}