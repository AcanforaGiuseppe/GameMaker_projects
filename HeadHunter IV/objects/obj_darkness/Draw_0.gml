/// @description Insert description here
// You can write your code in this editor
//var hero=instance_find(obj_hero,0); //per trovare hero e passare la sua posizione a shader

//oppure
var hero=global.mc.hero;
//oppure nel shader set uniform al posto di hero.x, hero.y
//global.mc.hero.x
//global.mc.hero.y


shader_set(shaderDarkness);
//arguments
shader_set_uniform_f(u_posx,hero.x);
shader_set_uniform_f(u_posy,hero.y);
draw_surface(surf,0,0);
//draw_set_color(c_black);
//draw_set_alpha(1.0);
//draw_rectangle(0,0,320,180,false); //creazione rettangolo, false é per filled o no
shader_reset();