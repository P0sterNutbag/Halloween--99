if active {
	/*audio_play_sound(snd_doorknock,1,0);
	if opened  open_timer = 30;
	else open_timer = open_timer_max;
	alarm[0] = light_timer;
	active = false;*/
	if !opened  var my_scene = scene_info;
	else  my_scene = candy_scene2;
	create_cutscene(my_scene);
}

if open_timer > 0 {
	open_timer--;
} else if open_timer < 0 {
	open_timer = 0;
	if !opened  var my_scene = candy_scene;
	else  my_scene = candy_scene2
	if collision_circle(x,y,range,obj_player,false,false) {
		create_cutscene(my_scene);
	}
}
