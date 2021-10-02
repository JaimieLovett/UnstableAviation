/// @desc Camera Setup

// Camera
global.camera_x = 0;
global.camera_y = 0;
target = oPlayer;

global.camera_width = 500;
global.camera_height = 500;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.camera_width, global.camera_height);

// Follow target
if instance_exists(target) {
	global.camera_x = target.x - (global.camera_width / 2);
	global.camera_y = target.y - (global.camera_height / 2);
	
	global.camera_x = clamp(global.camera_x, 0, room_width - global.camera_width);
	global.camera_y = clamp(global.camera_y, 0, room_height - global.camera_height);
}

camera_set_view_pos(view_camera[0], global.camera_x, global.camera_y);

// Display
display_scale = 2;
display_width = global.camera_width * display_scale;
display_height = global.camera_height * display_scale;

window_set_size(display_width, display_height);
surface_resize(application_surface, display_width, display_height);

alarm[0] = 1;

// GUI
display_set_gui_size(global.camera_width, global.camera_height);