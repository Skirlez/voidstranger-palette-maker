if clicked() {
	play_sound(snd_buttonlow)
	reset_color(colorslot, colorslot.defaultclr)
	with (obj_textfield)
		getcolor = true
	instance_destroy(id)	
}