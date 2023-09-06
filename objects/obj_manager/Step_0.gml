width = window_get_width()
height = window_get_height()
if (width != surface_get_width(application_surface) or height != surface_get_height(application_surface))
and width > 0 and height > 0 {
	surface_resize(application_surface, width, height)
}


