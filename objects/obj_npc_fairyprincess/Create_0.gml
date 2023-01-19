event_inherited();

scene_info = [
[cutscene_change_xscale,id],
[cutscene_dialogue,id,["I'm a fairy princess."]],
[cutscene_dialogue,obj_player,["Your mom's looking for you. You should go back to her."]],
[cutscene_dialogue,id,["Okay!"]],
[cutscene_move_character,id,60,-60,true,0.5,sprite_index,sprite_index],
[cutscene_instance_destroy,id],
[cutscene_change_value,inst_55D5F992,"visible",true],
[cutscene_change_value,inst_55D5F992,"active",false],
[cutscene_change_value,inst_26EE1591,"child_found",true],
];
