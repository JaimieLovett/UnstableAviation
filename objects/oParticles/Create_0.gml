part_system = part_system_create();

// Exhaust
part_type_exhaust = part_type_create();
part_type_sprite(part_type_exhaust, sExhaust, false, false, false);
part_type_size(part_type_exhaust, .4, .4, 0.05, 0);
part_type_color3(part_type_exhaust, c_aqua, c_blue, c_purple);
part_type_alpha3(part_type_exhaust, 1, 1, 0);
part_type_life(part_type_exhaust, 20, 20);

part_type_enemy_exhaust = part_type_create();
part_type_sprite(part_type_enemy_exhaust, sExhaust, false, false, false);
part_type_size(part_type_enemy_exhaust, .4, .4, 0.05, 0);
part_type_color3(part_type_enemy_exhaust, c_yellow, c_orange, c_red);
part_type_alpha3(part_type_enemy_exhaust, 1, 1, 0);
part_type_life(part_type_enemy_exhaust, 20, 20);

// Debris
part_type_asteroid_debris = part_type_create();
part_type_sprite(part_type_asteroid_debris, sAsteroidDebrisStrip, false, false, true);
part_type_life(part_type_asteroid_debris, 60, 80);
part_type_alpha3(part_type_asteroid_debris, .6, .6, 0);
part_type_direction(part_type_asteroid_debris, 0, 359, 0, false);
part_type_orientation(part_type_asteroid_debris, 0, 359, 1, false, false);
part_type_speed(part_type_asteroid_debris, 2, 2.4, -0.02, 0);

part_type_ship_debris = part_type_create();
part_type_sprite(part_type_ship_debris, sEnemyDebris, false, false, true);
part_type_size(part_type_ship_debris, .5, 1, 0, 0);
part_type_life(part_type_ship_debris, 60, 80);
part_type_alpha3(part_type_ship_debris, .6, .6, 0);
part_type_direction(part_type_ship_debris, 0, 359, 0, false);
part_type_orientation(part_type_ship_debris, 0, 359, 1, false, false);
part_type_speed(part_type_ship_debris, 3, 4, -0.05, 0);

part_type_bullet_debris = part_type_create();
part_type_sprite(part_type_bullet_debris, sBulletDebris, false, false, true);
part_type_size(part_type_bullet_debris, .5, 1, 0, 0);
part_type_life(part_type_bullet_debris, 60, 80);
part_type_alpha3(part_type_bullet_debris, .6, .6, 0);
part_type_direction(part_type_bullet_debris, 0, 359, 0, false);
part_type_orientation(part_type_bullet_debris, 0, 359, 1, false, false);
part_type_speed(part_type_bullet_debris, 3, 4, -0.05, 0);
