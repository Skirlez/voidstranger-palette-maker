if selected == true and instance_exists(global.colorpicker) {

	var digit = string_digits(keyboard_lastchar)
	keyboard_lastchar = ""
	

	if keyboard_check_pressed(vk_enter) {
		selected = false
		play_sound(snd_buttonlow)	
	}
	else {
		
		if wipestring == true {
			global.textfield[textid] = "0"
			wipestring = false	
		}
	
		if string_length(global.textfield[textid]) <= 2 {
			if digit != "" {
				play_sound(snd_moveslider)
				if global.textfield[textid] = "0"
					global.textfield[textid] = ""
					
				global.textfield[textid] += digit
			}
			if global.textfield[textid] != "" {
				var num = int64(global.textfield[textid])
				if mode == 0 {
					if char1 == "H"
						num = clamp(num, 0, 360)
					else
						num = clamp(num, 0, 100)
				}
				else
					num = clamp(num, 0, 255)
				
				global.textfield[textid] = string(num)
				obj_hsv_rgb_toggle.update = true
			
			}
		}
		
	}
}
	
