if clicked() {
	play_sound(snd_button)
	var str = "// Here is your palette! if you don't know what to do with this, press the i button inside the tool.\n\n//Palette Start. Copy from below this line!\n\n"
	for (var i = 0; i < 5; i++) {
		clr = make_color_rgb(global.palette_array[i][2] * 255, global.palette_array[i][1] * 255, global.palette_array[i][0] * 255)
		str += "colarray[" + string(i) + "] = " + string(clr) + "\n"
	}
	str += "\n//Palette End. Copy from above this line!"
	
	clipboard_set_text(str)
	displaytexttimer = 240
	with (obj_instructionsbutton)
		displaytexttimer = 0
	with (obj_importbutton)
		displaytexttimer = 0
	
}