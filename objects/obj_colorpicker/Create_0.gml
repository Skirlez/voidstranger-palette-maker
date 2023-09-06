colorpick_x = x
colorpick_y = y

choosing = false
image_xscale = 0.5
image_yscale = 0.5

colorvalue_picker = instance_create_depth(x + sprite_width / 2 + 24 * image_xscale, y, depth + 1, obj_colorpicker_value, {
	colorslot : colorslot,
	image_xscale : image_xscale,
	image_yscale : image_yscale
})

playsound = 1

with (obj_textfield)
	getcolor = true
