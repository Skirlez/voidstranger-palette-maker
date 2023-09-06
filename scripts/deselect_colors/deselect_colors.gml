function deselect_colors(){
	instance_destroy(global.colorpicker)
	global.colorpicker = noone
	with obj_colorslot 
		changing = false
}