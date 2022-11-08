/// @description Insert description here
// You can write your code in this editor
if(state != EnemyState.Dead)
{
	scr_dropShadow();
}
if(state == EnemyState.Die)
{
	draw_sprite_ext(sprite_index,image_index,x+random_range(-1,1),y,image_xscale,image_yscale,0,c_white,image_alpha);
}
else
{
	draw_self();
}