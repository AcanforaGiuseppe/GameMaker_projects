function scr_enemyUpdateIdle() {
	if(waitCrono > 0)
	{
		waitCrono --;
		if(waitCrono <= 0)
		{
			do
			{
				targetx = x + random_range(-walkRange,walkRange);
				targety = y + random_range(-walkRange,walkRange);
			}until(targetx >= 0 && targetx <= room_width && targety >= 0 && targety <= room_height);
		
			sprite_index = spr_zombie_walk;
			if(targetx > x)
			{
				image_xscale = 1;
			}
			else
			{
				image_xscale = -1;
			}
		}
	}
	else
	{
		var dist = point_distance(x,y,targetx,targety);
		var dir = point_direction(x,y,targetx,targety);
		if(dist > 0)
		{
			var s = walkSpeed;
			if(dist < s)
			{
				s = dist;
			}
			x += dcos(dir)*s;
			y -= dsin(dir)*s;
		}
		else
		{
			waitCrono = waitTimer;
			sprite_index = spr_zombie_idle;
		}
	}


}
