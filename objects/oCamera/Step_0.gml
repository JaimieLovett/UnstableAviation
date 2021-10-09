if (browser_width != width || browser_height != height)
{
    width = min(base_width, browser_width);
    height = min(base_height, browser_height);
    scale_canvas(base_width, base_height, width, height, true);
}

// Follow target
if instance_exists(target) {
	global.camera_x = target.x - (global.camera_width / 2);
	global.camera_y = target.y - (global.camera_height / 2);
	
	global.camera_x = clamp(global.camera_x, 0, room_width - global.camera_width);
	global.camera_y = clamp(global.camera_y, 0, room_height - global.camera_height);
}

// Camera shake
global.camera_x += random_range(-global.camera_shake, global.camera_shake);
global.camera_y += random_range(-global.camera_shake, global.camera_shake);

if (global.camera_shake > 0) {
	global.camera_shake -= 0.2;
	if (global.camera_shake < 0) global.camera_shake = 0;
}

camera_set_view_pos(view_camera[0], global.camera_x, global.camera_y);

layer_x("Parallax_0", global.camera_x * 0.98);
layer_y("Parallax_0", global.camera_y * 0.98);

layer_x("Parallax_1", global.camera_x * 0.92);
layer_y("Parallax_1", global.camera_y * 0.92);

layer_x("Parallax_2", global.camera_x * 0.86);
layer_y("Parallax_2", global.camera_y * 0.86);

layer_x("Parallax_3", global.camera_x * 0.8);
layer_y("Parallax_3", global.camera_y * 0.8);

layer_x("Parallax_4", global.camera_x * 0.74);
layer_y("Parallax_4", global.camera_y * 0.74);

layer_x("Parallax_5", global.camera_x * 0.68);
layer_y("Parallax_5", global.camera_y * 0.68);

layer_x("Parallax_6", global.camera_x * 0.62);
layer_y("Parallax_6", global.camera_y * 0.62);