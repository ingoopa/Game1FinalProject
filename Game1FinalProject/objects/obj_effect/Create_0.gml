/// @description

sentences = ds_list_create();
ds_list_add(sentences, 
"Hello 1", 
"Hello 2", 
"hello 3", 
"hello 4", 
"hello 4");

index = 0;

randomize();

sentence = ds_list_find_value(sentences, 0);
//speed of writing
var interval = random_range(0.08, 0.15);
alarm[0] = room_speed * interval
