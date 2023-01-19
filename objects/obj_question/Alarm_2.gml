if speaker != noone {
	if instance_exists(obj_speachbubble)  instance_destroy(obj_speachbubble)
	instance_create_layer(speaker.x,speaker.y-speaker.sprite_height-2,"control",obj_speachbubble);
}
