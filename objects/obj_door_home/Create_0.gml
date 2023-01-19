event_inherited();

scene_info = [
[cutscene_wait,1],
[cutscene_change_sprite,id,sprite_index,2],
[cutscene_wait,0.5],
[cutscene_change_value,obj_player,"visible",true],
[cutscene_wait,0.5],
[cutscene_move_character,obj_player,0,14,true,obj_player.spd/2,obj_player.walk_sprite,obj_player.idle_sprite],
[cutscene_dialogue,id,["Have fun trick-or-treating! Come back when you're done."]],
[cutscene_change_sprite,id,sprite_index,0],
];
create_cutscene(scene_info);


end_scene = [
[cutscene_change_sprite,id,sprite_index,2],
[cutscene_dialogue_question,id,["Are you done trick-or-treating?"]],
];


image_speed = 0;
image_blend = global.main_col;
