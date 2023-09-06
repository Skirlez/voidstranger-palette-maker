if clicked() {
	play_sound(snd_button)
	deselect_colors()
	with obj_colorslot {
		set_palette(global.palette)
		update = true
	}
	instance_destroy(obj_cancel_reset)
	instance_destroy(id)
}