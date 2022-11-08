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
	draw_self();
}