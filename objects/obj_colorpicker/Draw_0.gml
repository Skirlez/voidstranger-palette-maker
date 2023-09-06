
var blend = make_color_hsv(255, 0, colorslot.colorvalue)
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, blend, 1)
draw_sprite_ext(spr_hsv_pickhueborder, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
if clicked() 
	choosing = true
else if released_mouse()
	choosing = false
	
	
if choosing == true {
	var prev_x = colorpick_x
	var prev_y = colorpick_y
	colorpick_x = clamp(obj_mousebox.x, x - sprite_width / 2, x + sprite_width / 2)
	colorpick_y = clamp(obj_mousebox.y, y - sprite_height / 2, y + sprite_height / 2)
	
	if prev_x != colorpick_x or colorpick_y != prev_y {
		if playsound == 0 {
			play_sound(snd_moveslider)	
			playsound = 5
		}
	}
	
	var px = (colorpick_x - x + sprite_width / 2) * 2
	var py = (colorpick_y - y + sprite_height / 2) * 2
	colorslot.colorhue = px * 255 / 360
	colorslot.colorsaturation = 255 - py * 255 / 100
}
draw_sprite(spr_colorpick_point, 0, colorpick_x, colorpick_y)

if playsound > 0
	playsound -= 1
	
