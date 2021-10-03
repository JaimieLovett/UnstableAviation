/// @desc Camera Setup
// Camera
global.camera_x = 0;
global.camera_y = 0;
target = oPlayer;

view_enabled = true;
view_visible[0] = true;

global.camera_width = base_width;
global.camera_height = base_height;

camera_set_view_size(view_camera[0], global.camera_width, global.camera_height);

// Follow target
if instance_exists(target) {
	global.camera_x = target.x - (global.camera_width / 2);
	global.camera_y = target.y - (global.camera_height / 2);
	
	global.camera_x = clamp(global.camera_x, 0, room_width - global.camera_width);
	global.camera_y = clamp(global.camera_y, 0, room_height - global.camera_height);
}

camera_set_view_pos(view_camera[0], global.camera_x, global.camera_y);

// GUI
display_set_gui_size(global.camera_width, global.camera_height);