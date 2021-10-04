/// fade_in_to_room(new_room, fade_out_rate, fade_in_rate);
function fade_in_to_room(new_room, fade_out_rate, fade_in_rate){
	var _inst = instance_create_depth(0, 0, -999, oFader);
	_inst.room_to_transition_to = new_room;
	_inst.fade_out_speed = fade_out_rate;
	_inst.fade_in_speed = fade_in_rate;
}