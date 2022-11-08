// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dropShadow() {
	//function scr_dropShadow()
	//{

		draw_set_color(c_black);
		draw_set_alpha(0.5);

		draw_ellipse(x-8,y-4,x+8,y+4,false);

		draw_set_color(c_white);
		draw_set_alpha(1.0);
	//}


}