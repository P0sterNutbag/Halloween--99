event_inherited();

child_found = false;

talks = 0;

scene_info1 = [
[cutscene_dialogue,id,["I turned my back for one second and the next thing I know my kid is gone!"]],
[cutscene_dialogue,id,["If you find a fairy princess somewhere, tell her to come here."]],
];

scene_info2 = [
[cutscene_dialogue,id,["Thanks for finding my child! You deserve a reward. Here's king size candy bar!"]],
[cutscene_add_candy,"king size"],
[cutscene_change_value,id,"talks",1],
];

scene_info3 = [
[cutscene_dialogue,id,["Have a safe night!"]],
];
  