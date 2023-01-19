scene_info = -1;
scene = 0;

timer = 0;

x_dest = -1;
y_dest = -1;

draw = false;

// black bar values
screen_width = display_get_gui_width();
top_bar_height = 24;
bot_bar_height = 28;
top_bar_base = 0;
bot_bar_base = display_get_gui_height();
top_bar_y = top_bar_base;
bot_bar_y = bot_bar_base;

finished = false;

push = 0;
