randomize();

transition_phase = 0;

global.main_col = make_color_rgb(255,77,0)//make_color_rgb(255,51,44)//make_color_rgb(0,255,120); 
global.secondary_col = make_color_rgb(0,255,120);
//3F000D
//7A0019
//FF332C

// room transition variables
display_set_gui_size(512,288);
transition_alpha = 0;
room_destination = noone;
global.gui_width = display_get_gui_width();
global.gui_height = display_get_gui_height();

head_sprites = ds_map_create();
ds_map_add(head_sprites,heads.pumpkin,spr_player_head_pumpkin);
ds_map_add(head_sprites,heads.witch,spr_player_head_witch);
ds_map_add(head_sprites,heads.ghost,spr_player_head_ghost);
ds_map_add(head_sprites,heads.skeleton,spr_player_head_skeleton);
body_sprites = ds_map_create();
ds_map_add(body_sprites,bodies.pumpkin,spr_player_body_pumpkin_idle);
ds_map_add(body_sprites,bodies.witch,spr_player_body_witch_idle);
ds_map_add(body_sprites,bodies.ghost,spr_player_body_ghost_idle);
ds_map_add(body_sprites,bodies.skeleton,spr_player_body_skeleton_idle);


global.candies = ds_list_create();
ds_list_add(global.candies,"apple");
ds_list_add(global.candies,"taffy");
ds_list_add(global.candies,"chocolate");
ds_list_add(global.candies,"pb cup");
ds_list_add(global.candies,"caramel");
ds_list_add(global.candies,"sucker");
ds_list_add(global.candies,"candy corn");
ds_list_add(global.candies,"candy corn");
ds_list_add(global.candies,"malt balls");
ds_list_add(global.candies,"bubblegum");
ds_list_add(global.candies,"gummy bear");
ds_list_add(global.candies,"king size");
ds_list_add(global.candies,"peanut brittle");
ds_list_add(global.candies,"toffee");
ds_list_add(global.candies,"hard candy");
ds_list_add(global.candies,"licorice");
ds_list_add(global.candies,"black licorice");

global.candy_sprites = ds_map_create();
ds_map_add(global.candy_sprites,"apple",spr_candy_circle);
ds_map_add(global.candy_sprites,"taffy",spr_candy_wrapper);
ds_map_add(global.candy_sprites,"chocolate",spr_candy_bar);
ds_map_add(global.candy_sprites,"pb cup",spr_candy_circle);
ds_map_add(global.candy_sprites,"caramel",spr_candy_wrapper);
ds_map_add(global.candy_sprites,"sucker",spr_candy_sucker);
ds_map_add(global.candy_sprites,"candy corn",spr_candy_triangle);
ds_map_add(global.candy_sprites,"candy corn",spr_candy_triangle);
ds_map_add(global.candy_sprites,"malt balls",spr_candy_circle);
ds_map_add(global.candy_sprites,"bubblegum",spr_candy_wrapper);
ds_map_add(global.candy_sprites,"gummy bear",spr_candy_pack);
ds_map_add(global.candy_sprites,"king size",spr_king_size);
ds_map_add(global.candy_sprites,"peanut brittle",spr_candy_wrapper);
ds_map_add(global.candy_sprites,"toffee",spr_candy_wrapper);
ds_map_add(global.candy_sprites,"hard candy",spr_candy_wrapper);
ds_map_add(global.candy_sprites,"black licorice",spr_candy_bar);
ds_map_add(global.candy_sprites,"licorice",spr_candy_bar);
ds_map_add(global.candy_sprites,"rock",spr_candy_circle);

global.candy_lane = 0;
global.candy_lane_max = 3;