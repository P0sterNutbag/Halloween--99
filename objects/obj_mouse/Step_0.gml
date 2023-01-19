/*if my_item_spr != noone {
	if !mouse_check_button(mb_left) {
		var can_place = false;
		for(var i=0; i<4; i++) {
			if position_meeting(mouse_x+lengthdir_x(TILE_SIZE,90*i),mouse_y+lengthdir_y(TILE_SIZE,90*i),obj_player) {
				var can_place = true;
			}
		}
		if can_place {
			if position_meeting(mouse_x,mouse_y,obj_player) { // check for player
				ds_list_add(obj_player.candy_list,my_item);
			} else { // check for other objects
				var inst = instance_position(mouse_x,mouse_y,par_solid);
				if !inst {
					instance_create_layer(scr_get_grid_tile(mouse_x),scr_get_grid_tile(mouse_y),"objects",my_item);
					if is_players_item {
						var p = ds_list_find_index(obj_player.candy_list,my_item)
						ds_list_delete(obj_player.candy_list,p);
					}
				} else {
					/*if object_is_ancestor(inst.object_index,par_container) { // place inside container
						var size = ds_list_size(inst.my_items);
						if size < inst.my_items_max {
							ds_list_add(inst.my_items,my_item);
							if is_players_item {
								var p = ds_list_find_index(obj_player.candy_list,my_item)
								ds_list_delete(obj_player.candy_list,p);
							}
						}
					} else { 
					*/
					/*var new_state = ds_map_find_value(inst.object_interactions,my_item);
					if !is_undefined(new_state) and new_state != inst.state { // interact with object
						inst.state = new_state;
					} else { // put objects inside containers
						if inst.can_hold_items {
							var size = ds_list_size(inst.my_items);
							if size < inst.my_items_max {
								ds_list_add(inst.my_items,my_item);
								if is_players_item {
									var p = ds_list_find_index(obj_player.candy_list,my_item)
									ds_list_delete(obj_player.candy_list,p);
								}
							}
						}
					}
					//}
				}
			}
		}
		my_item = noone;
	}
}

if my_item_spr == noone {
	if mouse_check_button_pressed(mb_left) {
		var inst = instance_position(mouse_x,mouse_y,par_interact);
		if inst and inst.can_hold_items {
			var list = inst.my_items;
			if ds_list_size(list) > 0 {
				my_item = ds_list_find_value(list,0);
				ds_list_delete(list,0);
				is_players_item = false;
			}
		}
	}
}
