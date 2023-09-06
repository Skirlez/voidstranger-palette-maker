if clicked() and instance_exists(global.colorpicker) {
	play_sound(snd_button)
	with (obj_textfield)
		selected = false
	selected = true
	wipestring = true
}

		
		
if instance_exists(global.colorpicker) {
	if global.colorpicker.choosing == true or global.colorpicker.colorvalue_picker.choosing == true or getcolor {
		var clrobj = global.colorpicker.colorslot
		var clr = global.colorpicker.colorslot.clr
		if mode == 0 {
			switch char1 {
				case "H":
					global.textfield[textid] = string(round(clrobj.colorhue * 360 / 255))
					break;
				case "S":
					global.textfield[textid] = string(round(clrobj.colorsaturation * 100 / 255))
					break;
				case "V":
					global.textfield[textid] = string(round(clrobj.colorvalue * 100 / 255))
					break;
			}
		}
		else {
			switch char2 {
				case "R":
					global.textfield[textid] = string(round(color_get_red(clr)))
					break;
				case "G":
					global.textfield[textid] = string(round(color_get_green(clr)))
					break;
				case "B":
					global.textfield[textid] = string(round(color_get_blue(clr)))
					break;
			}
		}
		getcolor = false
	}
}
else 
	selected = false
