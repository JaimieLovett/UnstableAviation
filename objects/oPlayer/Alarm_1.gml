/// @desc Decrease stability
if weapon_stability > 0 && is_shooting weapon_stability -= 1;
else if engine_stability > 0 && !is_shooting engine_stability -= 1;
