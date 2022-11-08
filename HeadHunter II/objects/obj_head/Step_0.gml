/// @description Insert description here
// You can write your code in this editor

depth = -(y+altitude);

image_angle += sx*10;

if(altitude == 0)
{
	if(numjumps > 0)
	{
		jumpforce = numjumps * 2;
		numjumps --;
	}
	else
	{
		sx = 0;
		sy = 0;
		image_alpha -= 0.001;
		if(image_alpha <= 0.0)
		{
			instance_destroy();
		}
	}
}

x += sx;
y += sy;

if(x < 0)
{
	x = 0;
	sx *= -1;
}
if(x > room_width)
{
	x = room_width;
	sx *= -1;
}

if(y+altitude < 0)
{
	y = -altitude;
	sy *= -1;
}
if(y+altitude > room_height)
{
	y = room_height-altitude;
	sy *= -1;
}

if(altitude+jumpforce < 0)
{
	jumpforce = -altitude;
}

altitude += jumpforce;
y -= jumpforce;

jumpforce -= 0.2;