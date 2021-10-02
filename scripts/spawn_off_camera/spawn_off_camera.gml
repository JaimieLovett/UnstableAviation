///@function spawn_off_camera(obj, num)
///@arg obj
///@arg num
function spawn_off_camera(obj, num) {

	var xx, yy;

	// Stops the objects spawning so close to the camera.
	var padding = 64;

	repeat(num) {
		xx = random_range(0, room_width);
		yy = random_range(0, room_height);


		while point_in_rectangle(
			xx, yy,
			global.camera_x - padding,
			global.camera_y - padding,
			global.camera_x + global.camera_width + padding,
			global.camera_y + global.camera_height + padding) {
		
			xx= random_range(0, room_width);
			yy = random_range(0, room_height);	
		}

		instance_create_layer(xx, yy, "Instances", obj);
	}
}