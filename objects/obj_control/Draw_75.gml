// ROOM TRANSITION //
if room_destination != noone {
	draw_set_color(c_black);
	draw_set_alpha(transition_alpha);
	draw_rectangle(0,0,global.gui_width,global.gui_height,false);
	draw_set_alpha(1);
}

// room end
if room == rm_end {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(global.main_col);
	draw_text(global.gui_width/2,global.gui_height/2,"Happy Halloween!\nThanks for playing!");
}
