var push = max(0,keyboard_check_pressed(ord("A")),keyboard_check_pressed(vk_left),keyboard_check_pressed(ord("W")),keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("S")),keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("D")),keyboard_check_pressed(vk_right),keyboard_check_pressed(vk_space));
var spdup = max(0,keyboard_check(ord("A")),keyboard_check(vk_left),keyboard_check(ord("W")),keyboard_check(vk_up),keyboard_check(ord("S")),keyboard_check(vk_down),keyboard_check(ord("D")),keyboard_check(vk_right));

// finish
if string_length(textOutput) >= string_length(string(text[text_index])) {
	done = true;
	if alarm[1] = -1  alarm[1] = 30;
	if push {
		if text_index < array_length(text)-1 {
			draw_next = true;
			text_index+=1;
			alarm[0] = 10;
			alarm[2] = 1;
			textOutput = "";
			textPosition = 1;
			currentLine = "";
			currentCharacter = "";
		} else {
			instance_destroy();
			instance_destroy(obj_speachbubble);
			cutscene_end_action();
		}
	}
} else {
	done = false;
	if spdup  textSpeed = 1;
}
