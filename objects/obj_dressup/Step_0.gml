var key_right =  max(keyboard_check_pressed(ord("D")),keyboard_check_pressed(vk_right));
var key_left =  max(keyboard_check_pressed(ord("A")),keyboard_check_pressed(vk_left));
var key_up =  max(keyboard_check_pressed(ord("W")),keyboard_check_pressed(vk_up));
var key_down =  max(keyboard_check_pressed(ord("S")),keyboard_check_pressed(vk_down));
var push = max(0,key_right,key_left,keyboard_check_pressed(vk_space),keyboard_check_pressed(vk_enter));

height = array_length(costume);
length = array_length(costume[0])-1;

if key_up  ypos--;
if key_down  ypos++;
if ypos < 0  ypos = 2;
else if ypos > 2  ypos = 0;

if key_right {
	xpos++;
	if xpos > length  xpos = 0;
	if ypos == 0 {
		head = costume[ypos,xpos];
	} else if ypos == 1 {
		body = costume[ypos,xpos];
	}
}
if key_left {
	xpos--;
	if xpos < 0  xpos = length;
	if ypos == 0 {
		head = costume[ypos,xpos];
	} else if ypos == 1  {
		body = costume[ypos,xpos];
	}
}

if push and ypos == 2 {
	global.player_head = head;
	global.player_body = body;
	room_goto(rm_neighborhood);
}
