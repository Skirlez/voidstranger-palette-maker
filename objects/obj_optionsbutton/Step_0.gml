if clicked() {
	deselect_colors()
	deselect_reset()
	if image_index == 0 {
		play_sound(snd_buttonhigh)
		global.clicklevel = 1
		clicklevel = 1
		image_index = 1
	}
	else {
		play_sound(snd_buttonlow)
		image_index	= 0
		global.clicklevel = 0
		clicklevel = 0
	}
}