/// @description Insert description here
// You can write your code in this editor
//event_inherited(); //comando per ereditare dal padre il draw
//dal momento che creo evento draw quello che ho disegno dalla finestraa oggetto devo
//mettere drawself

//GESTIONE OMBRA SOTTO IL PLAYER
//draw_set_color(c_black);
//draw_set_alpha(0.5);
//draw_ellipse(x-8,y-4,x+8,y+4,0);
//draw_set_color(c_white);
//draw_set_alpha(1.0);
//draw_self(); //é equivalente al draw_sprite_ext(sprite_index, image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);

//RIFACCIAMO MEGLIO USANDO UNA STATEMACHINE

var uvs = sprite_get_uvs(sprite_index, image_index) //ritorna un array con i 4 componenti top right bottom left
//all'interno della texture page

var spr_width = sprite_get_width(sprite_index);

if(state != HeroState.Dead)
{
	scr_dropShadow();
}
if(state == HeroState.Die)
{
	draw_sprite_ext(sprite_index,image_index,x+random_range(-1,1),y,image_xscale,image_yscale,0,c_white,image_alpha);
}
else
{
	shader_set(shaderOutline);
	shader_set_uniform_f(u_left,uvs[0]);
	shader_set_uniform_f(u_right,uvs[2]);
	shader_set_uniform_f(u_width,spr_width);
	draw_self();
	shader_reset();
}