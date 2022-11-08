function scr_heroUpdateIdle() {
	var dist = point_distance(x,y,mouse_x,mouse_y);
	var angle = point_direction(x,y,mouse_x,mouse_y);
	//WALK
	if(dist > 6)
	{
		speed = 1;
		direction = angle;
		if(sprite_index != spr_hero_walk)
		{
			sprite_index = spr_hero_walk;
		}
		if(mouse_x > x)
		{
			image_xscale = 1;	
		}
		else
		{
			image_xscale = -1;
		}
	}
	else//IDLE
	{
		speed = 0;
		if(sprite_index != spr_hero_idle)
		{
			sprite_index = spr_hero_idle;
		}
	}
	//DASH TRIGGER
	if(mouse_check_button_pressed(mb_left))
	{
		scr_heroSetState(HeroState.Attack);
	}


}
