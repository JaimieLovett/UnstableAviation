// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scale_canvas(base_width, base_height, current_width, current_height, center){
	var _aspect = (base_width / base_height);
	if ((current_width / _aspect) > current_height) {
		window_set_size((current_height * _aspect), current_height);
	}
	else {
		window_set_size(current_width, (current_width / _aspect));
	}
	
	if center window_center();
	
	view_wport[0] = min(window_get_width(), base_width);
	view_hport[0] = min(window_get_height(), base_height)
	surface_resize(application_surface, min(window_get_width(), base_width), min(window_get_height(), base_height));
}