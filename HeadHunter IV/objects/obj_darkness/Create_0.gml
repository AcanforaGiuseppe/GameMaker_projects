/// @description Insert description here
// You can write your code in this editor
depth=-100000;

surf=surface_create(320,320);
surface_set_target(surf);
draw_set_color(c_black);
draw_rectangle(0,0,320,180,0);
surface_reset_target();


u_posx = shader_get_uniform(shaderDarkness,"u_posx");
u_posy = shader_get_uniform(shaderDarkness,"u_posy");