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

layer_x("Parallax_2", global.camera_x * 0.88);
layer_y("Parallax_2", global.camera_y * 0.88);
