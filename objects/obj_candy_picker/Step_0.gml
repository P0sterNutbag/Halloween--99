var key_up =  max(keyboard_check_pressed(ord("W")),keyboard_check_pressed(vk_up));
var key_down =  max(keyboard_check_pressed(ord("S")),keyboard_check_pressed(vk_down));
var push = max(0,keyboard_check_pressed(vk_space));

if key_up  ypos--;
if key_down  ypos++;
if ypos < 0  ypos = candy_amount-1;
else if ypos > candy_amount-1  ypos = 0;

if push {
	var final_candy = my_candy[ypos];
	ds_list_add(obj_player.candy_list,final_candy);
	scr_drop_candy(final_candy);
	cutscene_end_action();
	instance_destroy();
}
