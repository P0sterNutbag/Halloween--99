event_inherited();

opened = false
open_timer = 0;
open_timer_max = random_range(30,60);
taken_candy = 0;

range = 32;

scr_get_candy_list(3);

scene_info = [
[cutscene_dialogue,noone,["There's a bowl of candy with a note that says, 'take only one or DIE!!!'."]],
[cutscene_choose_candy_all,id,my_candy],
];


image_speed = 0;
