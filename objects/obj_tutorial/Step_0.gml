if place_meeting(x,y,obj_player) {
	if alarm[0] = -1  alarm[0] = 90;
}

if fade {
	image_alpha -= alpha_change;
	if image_alpha <= 0 {
		instance_destroy();
	}
}
