var key_up =  max(keyboard_check_pressed(ord("W")),keyboard_check_pressed(vk_up));
var key_down =  max(keyboard_check_pressed(ord("S")),keyboard_check_pressed(vk_down));
var push = max(0,keyboard_check_pressed(vk_space));

if key_up  ypos--;
if key_down  ypos++;
if ypos < 0  ypos = candy_amount;
else if ypos > candy_amount  ypos = 0;

candy_amount = ds_list_size(my_candy);

if push {
	if ypos < candy_amount {
		var candy = my_candy[| ypos];
		ds_list_add(obj_player.candy_list,candy);
		scr_drop_candy(candy);
		var index = ds_list_find_index(my_candy,candy);
		ds_list_delete(my_candy,index);
		ds_list_delete(dad.my_candy,index);
		dad.taken_candy += 1;
		if dad.object_index == obj_door_bowl_haunted {
			if dad.taken_candy > 1 {
				cutscene_end_action();
				instance_destroy();
				dad.alarm[0] = 50;
			}
		}
	} else {
		cutscene_end_action();
		instance_destroy();
	}
}
