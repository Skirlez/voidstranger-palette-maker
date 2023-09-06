var blend = make_color_hsv(color_get_hue(colorslot.clr), color_get_saturation(colorslot.clr), 255)
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, blend, 1)
draw_sprite_ext(spr_hsv_pickvalueborder, 0, x, y, image_xscale, image_yscale, 0, blend, 1)
draw_sprite(spr_hsv_pickvalue_slider, 0, x, slider_y - 1)