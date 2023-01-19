var push = max(0,keyboard_check_pressed(vk_space),keyboard_check_pressed(vk_enter));
var spdup = max(0,keyboard_check(ord("A")),keyboard_check(vk_left),keyboard_check(ord("W")),keyboard_check(vk_up),keyboard_check(ord("S")),keyboard_check(vk_down),keyboard_check(ord("D")),keyboard_check(vk_right));
var move = max(0,keyboard_check_pressed(ord("A")),keyboard_check_pressed(vk_left),keyboard_check_pressed(ord("D")),keyboard_check_pressed(vk_right))

// finish
if string_length(textOutput) >= string_length(string(text[text_index])) {
	done = true;
	if alarm[1] = -1  alarm[1] = 30;
	draw_question = true;
	if push {
		if question_pos == 1 {
			with obj_control {
				my_room = room;
				room_destination = rm_end;
				transition_phase = 0;
				player_spawn_x = -1;
				player_spawn_y = -1;
			}
			instance_destroy();
			instance_destroy(obj_speachbubble);
			cutscene_end_action();
		} else {
			instance_destroy();
			instance_destroy(obj_speachbubble);
			cutscene_end_action();
		}
	}
	if move {
		if question_pos == 0  question_pos = 1;
		else  question_pos = 0;
	}
} else {
	done = false;
	if spdup  textSpeed = 1;
}
