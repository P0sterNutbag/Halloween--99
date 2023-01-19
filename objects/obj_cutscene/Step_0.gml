if !finished {
	script_execute_alt(current_scene[0], current_scene_array);
}

// get input
var key_right =  max(keyboard_check_pressed(ord("D")),keyboard_check_pressed(vk_right));
var key_left =  max(keyboard_check_pressed(ord("A")),keyboard_check_pressed(vk_left));
var key_up =  max(keyboard_check_pressed(ord("W")),keyboard_check_pressed(vk_up));
var key_down =  max(keyboard_check_pressed(ord("S")),keyboard_check_pressed(vk_down));
push = max(0,key_right,key_left,key_up,key_down);

// animate black bars
if !finished {
	if top_bar_y != top_bar_base+top_bar_height {
		top_bar_y = lerp(top_bar_y,top_bar_base+top_bar_height,0.5);
	}
	if bot_bar_y != bot_bar_base-bot_bar_height {
		bot_bar_y = lerp(bot_bar_y,bot_bar_base-bot_bar_height,0.5);
	}
} else {
	top_bar_y = lerp(top_bar_y,top_bar_base,0.5);
	bot_bar_y = lerp(bot_bar_y,bot_bar_base,0.5);
	if top_bar_y < 0.25 {
		instance_destroy();
	}
}
 