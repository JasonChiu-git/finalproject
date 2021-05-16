/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text(room_width/2,22,"YOUR SCORE");
draw_text(room_width/2,110, "TOP SCORES");

draw_set_font(fnt_score);
draw_text(room_width/2,66, string(score));
draw_text(room_width/2,154, score_list[|0]);
draw_text(room_width/2,198, score_list[|1]);
draw_text(room_width/2,242, score_list[|2]);
draw_text(room_width/2,286, score_list[|3]);
draw_text(room_width/2,330, score_list[|4]);



draw_set_font(fnt_title);
draw_text(room_width/2,700,"PRESS ENTER TO RETURN TO MAIN MENU!");