if clicked() {
	obj_preview.image_index -= sign(image_xscale)
	if obj_preview.image_index > sprite_get_number(spr_preview) - 1
		obj_preview.image_index = 0
	else if obj_preview.image_index < 0
		obj_preview.image_index = sprite_get_number(spr_preview) - 1
	if sign(image_xscale) == 1
		play_sound(snd_buttonlow)
	else
		play_sound(snd_button)
}


if global.clicklevel == 0 
	image_blend = c_black
else
	image_blend = c_white