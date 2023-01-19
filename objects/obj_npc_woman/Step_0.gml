if active {
	if !child_found  var scene = scene_info1;
	else {
		if talks == 0  scene = scene_info2
		else scene = scene_info3;
	}
	create_cutscene(scene);
	active = false;
}

