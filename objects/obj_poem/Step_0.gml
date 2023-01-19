if !all_fade {
	if line_alpha[alpha_channel] < 1 {
		line_alpha[alpha_channel] += alpha_change;
	} else {
		//if alpha_channel == 4  var timer = 60;
		//else  
		timer = 120;
		if alarm[0] == -1  alarm[0] = timer;
	}
} else {
	if line_alpha[1] <= 0 {
		if alarm[0] == -1  alarm[0] = 30;
	} else {
		for (var i=0; i<6; i++) {
			line_alpha[i] -= alpha_change;
		}
	}
}
