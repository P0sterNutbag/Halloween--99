if !all_fade {
	if alpha_channel < 5 {
		alpha_channel++;
	} else {
		//room_goto(rm_dressup);
		all_fade = true;
	}
} else {
	room_goto(rm_dressup);
}
