/// @desc Init variables.
max_speed = 4;
acceleration = 0.05;
deceleration = 0.02;
is_shooting = true;
can_shoot = true;

// shoot_delay will get set to stability * shoot_delay_modifier.
// The lower the players stability, the faster they will be able to shoot.
stability = 100;
shoot_delay_modifier = 0.1;
shoot_delay = 0.25;