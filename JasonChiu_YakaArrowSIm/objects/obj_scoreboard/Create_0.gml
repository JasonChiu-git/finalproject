/// @description Insert description here
// You can write your code in this editor




score_list = ds_list_create();
ds_list_add(score_list, global.first, global.second, global.third, global.fourth, global.fifth);//sets the score list to have the global variables initialized in obj_init


///-----------------------------------------////-----------------------------------------///-----------------------------------------//



if (score > score_list[|0]){
	ds_list_insert(score_list, 0, score);
	global.second = global.first;
	global.third = global.fourth;
	global.fourth = global.fifth;
	global.first = score;
	
}
else if(score > score_list[|1]){
	ds_list_insert(score_list, 1, score);
	global.third = global.second;
	global.fourth = global.third;
	global.fifth = global.fourth;
	global.second = score;
}




else if(score > score_list[|2]){
	ds_list_insert(score_list, 2, score);
	global.fourth = global.third;
	global.fifth = global.fourth;
	global.third = score;
}
else if(score > score_list[|3]){
	ds_list_insert(score_list, 3, score);
	global.fifth = global.fourth;
	global.fourth = score;
}
else if(score > score_list[|4]){
	ds_list_insert(score_list, 4, score);
	global.fifth = score;
}
/*show_debug_message(global.first);
show_debug_message(global.second);
show_debug_message(global.third);
show_debug_message(global.fourth);
show_debug_message(global.fifth);;*/