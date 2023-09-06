if clicked() and !instance_exists(obj_confirm_reset) {
	play_sound(snd_buttonhigh)
	deselect_colors()
	instance_create_depth(x - 24, y + 96, depth + 1, obj_confirm_reset)
	instance_create_depth(x + 24, y + 96, depth + 1, obj_cancel_reset)
}