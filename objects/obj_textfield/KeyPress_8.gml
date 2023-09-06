if selected == true and instance_exists(global.colorpicker) {
	play_sound(snd_moveslider)
	wipestring = false
	global.textfield[textid] = string_delete(global.textfield[textid], string_length(global.textfield[textid]), 1)
	if global.textfield[textid] == ""
		global.textfield[textid] = "00" // dunno why i need 2
	
	obj_hsv_rgb_toggle.update = true
}