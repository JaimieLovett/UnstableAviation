event_inherited();

/// @desc Init variables.
max_speed = 3;
acceleration = 0.2;
deceleration = 0.02;
is_shooting = true;
can_shoot = true;

// shoot_delay will get set to stability * shoot_delay_modifier.
// The lower the players stability, the faster they will be able to shoot.
stability = 100;
shoot_delay_modifier = 0.05;
shoot_delay = 0.125;
bullet_speed = 10;

guns = -1;
invincible = false;

exhaust_counter = 0;