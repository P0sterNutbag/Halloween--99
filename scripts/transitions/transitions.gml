global.mid_transition = false;
global.room_target = -1;

function transition_place_sequence(_type) {
	if layer_exists("transition")  layer_destroy("transition");
	var _lay = layer_create(-9999,"transition");
	layer_sequence_create(_lay,obj_camera.xpos,obj_camera.ypos,_type);
}

function transition_start(room_target, type_out, type_in) {
	if !global.mid_transition {
		global.mid_transition = true;
		global.room_target = room_target;
		transition_place_sequence(type_out);
		layer_set_target_room(room_target);
		transition_place_sequence(type_in);
		layer_reset_target_room();
		return true;
	} else {
		return false;
	}
}

function transition_change_room() {
	room_goto(global.room_target);
}

function transition_finished() {
	layer_sequence_destroy(self.elementID);
	global.mid_transition = false;
}