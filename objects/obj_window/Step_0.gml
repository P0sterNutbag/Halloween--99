if !open {
	image_index = 0;
	scene_info = [
	[cutscene_change_value,id,"open",true],
	[cutscene_dialogue,noone,["You crack open the window slightly and feel the cool night air seep inside."]],
	[cutscene_show_photo,spr_window_view],
	];
} else {
	image_index = 1;
	scene_info = [
	[cutscene_dialogue,noone,["You close the window."]],
	[cutscene_change_value,id,"open",false],
	];
}
