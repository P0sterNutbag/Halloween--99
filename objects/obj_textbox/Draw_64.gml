draw_set_alpha(1);
draw_set_color(global.main_col);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_dialogue);
draw_text_ext(x+xoffset,y+yoffset,textOutput+" ",8,1000);

if draw_next  image_index = 1;
else  image_index = 0;
