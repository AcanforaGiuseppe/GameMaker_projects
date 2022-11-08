/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_set_alpha(0.5);

draw_ellipse(x-2,y-1+altitude,x+2,y+1+altitude,false);

draw_set_color(c_white);
draw_set_alpha(1.0);

draw_self();