cam_target = obj_player;

width = camera_get_view_width(view_camera[0]);
height = camera_get_view_height(view_camera[0]);

// offsets
xoffset = -28//0//-54;
yoffset = cam_target.sprite_height/2+17;

// position
xpos = cam_target.x-(width/2)+xoffset;
ypos = cam_target.y-(height/2)-yoffset;

/*
// Initialise Viewports
view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 224;224
view_hport[0] = 126;116

view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, noone, -1, -1, -1, -1);

width = camera_get_view_width(view_camera[0]);
height = camera_get_view_height(view_camera[0]);

// scale
window_scale = 10;
window_set_size(width*window_scale,height*window_scale);
surface_resize(application_surface,width*window_scale,height*window_scale);

// fullscreen
window_set_fullscreen(true);

// offsets
xoffset = 0;
yoffset = cam_target.sprite_height/2;

// position
xpos = cam_target.x-(width/2)+xoffset;
ypos = cam_target.y-(height/2)-yoffset;

