if clicked() {
	global.palette -= sign(image_xscale)
	if sign(image_xscale) == 1
		play_sound(snd_buttonlow)
	else
		play_sound(snd_button)
	
	
	var maxp = 7
		

	if global.palette < 0
		global.palette = maxp
		
	else if global.palette > maxp
		global.palette = 0
		
	set_palette(global.palette, !autoreset)
}