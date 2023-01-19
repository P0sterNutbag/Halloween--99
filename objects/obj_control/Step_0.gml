//if keyboard_check_pressed(vk_escape)  game_end();
//if keyboard_check_pressed(ord("R"))  game_restart();

// ROOM TRANSITION //
if room_destination != noone {
	if transition_phase == 0 {
		transition_alpha += 0.02;
		if transition_alpha >= 1 {
			if my_room != room_destination room_goto(room_destination);
			transition_phase++;
			if instance_exists(obj_player) and player_spawn_x > 0 {
				obj_player.x = player_spawn_x;
				obj_player.y = player_spawn_y;
				obj_player.visible = true;
				obj_player.state = states.walk;
			}
		} else {
			if instance_exists(obj_player) {
				obj_player.state = states.cutscene;
				obj_player.visible = false;
			}
		}
	} else {
		transition_alpha -= 0.05;
		if transition_alpha <= 0 {
			room_destination = noone;
		}
	}
}

// play music 
if room != rm_init and room != rm_poem {
	if !audio_is_playing(snd_music) {
		audio_play_sound(snd_music,0.9,false);
	}
}