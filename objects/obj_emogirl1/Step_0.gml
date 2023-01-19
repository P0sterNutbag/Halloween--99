if active {
	if talks == 0  var scene = scene_info1;
	else if talks == 1 scene = scene_info2;
	create_cutscene(scene);
	active = false;
}

