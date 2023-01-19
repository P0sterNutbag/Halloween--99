xpos += spd;

if xpos > global.gui_width {
	instance_destroy();
	instance_create_layer(0,0,"control",object_index);
}
