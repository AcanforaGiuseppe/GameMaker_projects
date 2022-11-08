/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_font(global.fontshadow2x);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_text(room_width*0.5,4,string(global.points));

draw_set_color(c_yellow);
draw_set_halign(fa_right);
draw_text(room_width-4,4,string(global.hipoints));
