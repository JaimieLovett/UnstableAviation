/// @desc Choose frame
image_index = irandom_range(0, image_number - 1);

// We want the powerup to despawn after 5 seconds.
alarm[0] = room_speed * 5;

image_speed = 0;