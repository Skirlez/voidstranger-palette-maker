if clicked() {
	play_sound(snd_button)
	if clipboard_has_text() {
		var str = clipboard_get_text()
		drawstring = 1
		for (var i = 0; i < 5; i++) {
			var linebreak = string_pos("colarray[" + string(i) + "]", str) + 14
			if linebreak != 0 + 14 {
				var char = ""
				var numstring = ""
				while (char != "\n" and linebreak <= string_length(str)) {
					char = string_char_at(str, linebreak) 
					numstring += char
					linebreak++
				}
				var clr = string_digits(numstring)
				global.palette_array[i][0] = color_get_blue(clr) / 255
				global.palette_array[i][1] = color_get_green(clr) / 255
				global.palette_array[i][2] = color_get_red(clr) / 255
			}
			else
				drawstring = 0
		}
		with (obj_colorslot)
			update = true
		alarm[0] = 1
	}
	else
		drawstring = 0
	
	displaytexttimer = 240
	with (obj_exportbutton)
		displaytexttimer = 0
	with (obj_instructionsbutton)
		displaytexttimer = 0
}

