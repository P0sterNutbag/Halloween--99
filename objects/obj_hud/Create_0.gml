display_set_gui_size(208,117);

// inventory
inventory_width = 54;
inventory_xoffset = 7;
inventory_yoffset = 60;
inventory_text_yoffset = 10;
inventory_cell_size_x = inventory_width-inventory_xoffset;
inventory_cell_size_y = 10;
width = display_get_gui_width();
height = display_get_gui_height();
grabbed_item_pos = -1;

// clouds
instance_create_layer(0,0,"control",obj_hud_cloud1);
instance_create_layer(0,0,"control",obj_hud_cloud2);

// portrait data
sprites_head = ds_map_create();
ds_map_add(sprites_head,heads.pumpkin,spr_portrait_head_pumpkin);
ds_map_add(sprites_head,heads.witch,spr_portrait_head_witch);
ds_map_add(sprites_head,heads.ghost,spr_portrait_head_ghost);
ds_map_add(sprites_head,heads.skeleton,spr_portrait_head_skeleton);
sprites_body = ds_map_create();
ds_map_add(sprites_body,bodies.pumpkin,spr_portrait_body_pumpkin);
ds_map_add(sprites_body,bodies.witch,spr_portrait_body_witch);
ds_map_add(sprites_body,bodies.ghost,spr_portrait_body_ghost);
ds_map_add(sprites_body,bodies.skeleton,spr_portrait_body_skeleton);
