/// @description Insert description here
// You can write your code in this editor
if(altitude > 0)
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);

	draw_ellipse(x-3,y-1.5+altitude,x+3,y+1.5+altitude,false);

	draw_set_color(c_white);
	draw_set_alpha(1.0);
}

draw_self();