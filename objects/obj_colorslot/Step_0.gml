if clicked() {
	deselect_reset()
	if changing == false {
		play_sound(snd_buttonhigh)
		instance_destroy(global.colorpicker)
		with obj_colorslot
			changing = false
		global.colorpicker = instance_create_depth(x, y + 48, depth - 1, obj_colorpicker, {
			colorslot : id	
		})
		reset_color(id, clr)
		changing = true
	}
	else {
		play_sound(snd_buttonlow)
		instance_destroy(global.colorpicker)
		global.colorpicker = noone
		changing = false
	}
}

if changing == true {
	clr = make_color_hsv(colorhue, colorsaturation, colorvalue)
	global.palette_array[colornum][0] = color_get_red(clr) / 255
	global.palette_array[colornum][1] = color_get_green(clr) / 255
	global.palette_array[colornum][2] = color_get_blue(clr) / 255
	if clr != defaultclr and myreset == noone {
		myreset = instance_create_depth(x, y - 32, depth - 1, obj_resetcolorbutton)
		myreset.colorslot = id
	}
	else if clr == defaultclr and myreset != noone {
		instance_destroy(myreset)
		myreset = noone
	}
}
else {
	if myreset != noone {
		instance_destroy(myreset)
		myreset = noone	
	}
}



	if keyboard_check(ord("A")) and place_meeting(x, y, obj_mousebox)
		show_debug_message(clr != defaultclr)