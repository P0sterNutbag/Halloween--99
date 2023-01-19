draw_set_color(global.main_col);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_title);

draw_set_alpha(line_alpha[1]);
draw_text(global.gui_width/2,global.gui_height/2-(line_space+line_space/2),line1);

draw_set_alpha(line_alpha[2]);
draw_text(global.gui_width/2,global.gui_height/2-(line_space/2),line2);

draw_set_alpha(line_alpha[3]);
draw_text(global.gui_width/2,global.gui_height/2+(line_space/2),line3);

draw_set_alpha(line_alpha[4]);
draw_text(global.gui_width/2,global.gui_height/2+(line_space+line_space/2),line4);

draw_set_alpha(line_alpha[5]);
draw_text(global.gui_width/2+45,global.gui_height/2+(line_space*2+line_space/2+10),line5);

draw_set_alpha(1);
