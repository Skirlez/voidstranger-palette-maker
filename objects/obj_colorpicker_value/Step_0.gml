if clicked() 
	choosing = true
else if released_mouse()
	choosing = false

if choosing == true {
	var prev_slider_y = slider_y
	slider_y = clamp(obj_mousebox.y, y - sprite_height / 2, y + sprite_height / 2)
	
	if slider_y != prev_slider_y{
		if playsound == 0 {
			play_sound(snd_moveslider)	
			playsound = 4
		}
	}
	value = (slider_y - y + sprite_height / 2) * 2
	colorslot.colorvalue = 255 - value * 255 / 100
}

if playsound > 0
	playsound -= 1