sprite_set_bbox_mode(sprite_index, bboxmode_fullimage);

spd = 0.01;
grav = 0.01;
ybot = 109;
hsp = 0; vsp = 0;

image_blend = global.main_col;
image_speed = 0;

state = "fall";
