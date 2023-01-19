//draw_self();
draw_set_color(c_black);
draw_rectangle(0,top_bar_base,screen_width,top_bar_y,false);
draw_sprite_ext(spr_hud_line,0,0,top_bar_y,screen_width,1,0,global.main_col,1);
draw_rectangle(0,bot_bar_base,screen_width,bot_bar_y,false);
draw_sprite_ext(spr_hud_line,0,0,bot_bar_y,screen_width,1,0,global.main_col,1);
