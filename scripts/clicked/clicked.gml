function clicked() {
	return place_meeting(x, y, obj_mousebox) and mouse_check_button_pressed(mb_left) and (clicklevel == global.clicklevel or clicklevel == -1)
}