head = heads.pumpkin;
body = bodies.pumpkin;

costume[0,0] = heads.pumpkin;
costume[0,1] = heads.witch;
costume[0,2] = heads.skeleton;
costume[0,3] = heads.ghost;
costume[1,0] = bodies.pumpkin;
costume[1,1] = bodies.witch;
costume[1,2] = bodies.skeleton;
costume[1,3] = bodies.ghost;
 
ypos = 0;
xpos = 0;

terms_head = ds_map_create();
ds_map_add(terms_head,heads.pumpkin,"Pumpkin");
ds_map_add(terms_head,heads.witch,"Witch");
ds_map_add(terms_head,heads.ghost,"Ghost");
ds_map_add(terms_head,heads.skeleton,"Skeleton");
terms_body = ds_map_create();
ds_map_add(terms_body,bodies.pumpkin,"Pumpkin");
ds_map_add(terms_body,bodies.witch,"Witch");
ds_map_add(terms_body,bodies.ghost,"Ghost");
ds_map_add(terms_body,bodies.skeleton,"Skeleton");

sprites_head = ds_map_create();
ds_map_add(sprites_head,heads.pumpkin,spr_player_head_pumpkin);
ds_map_add(sprites_head,heads.witch,spr_player_head_witch);
ds_map_add(sprites_head,heads.ghost,spr_player_head_ghost);
ds_map_add(sprites_head,heads.skeleton,spr_player_head_skeleton);
sprites_body = ds_map_create();
ds_map_add(sprites_body,bodies.pumpkin,spr_player_body_pumpkin_idle);
ds_map_add(sprites_body,bodies.witch,spr_player_body_witch_idle);
ds_map_add(sprites_body,bodies.ghost,spr_player_body_ghost_idle);
ds_map_add(sprites_body,bodies.skeleton,spr_player_body_skeleton_idle);

portrait_head = ds_map_create();
ds_map_add(portrait_head,heads.pumpkin,spr_portrait_head_pumpkin);
ds_map_add(portrait_head,heads.witch,spr_portrait_head_witch);
ds_map_add(portrait_head,heads.ghost,spr_portrait_head_ghost);
ds_map_add(portrait_head,heads.skeleton,spr_portrait_head_skeleton);
portrait_body = ds_map_create();
ds_map_add(portrait_body,bodies.pumpkin,spr_portrait_body_pumpkin);
ds_map_add(portrait_body,bodies.witch,spr_portrait_body_witch);
ds_map_add(portrait_body,bodies.ghost,spr_portrait_body_ghost);
ds_map_add(portrait_body,bodies.skeleton,spr_portrait_body_skeleton);

display_set_gui_size(208,117);
global.gui_width = display_get_gui_width();
global.gui_height = display_get_gui_height();
