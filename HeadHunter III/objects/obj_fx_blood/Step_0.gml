/// @description Insert description here
// You can write your code in this editor

depth = -(y+altitude);

image_angle += sx*10;

if(altitude == 0)
{
	var fs = instance_find(obj_floorSurface,0);
	
	surface_set_target(fs.surf);
	draw_self();
	surface_reset_target();
	
	instance_destroy();
	exit;
}

x += sx;
y += sy;

if(altitude+jumpforce < 0)
{
	jumpforce = -altitude;
}

altitude += jumpforce;
y -= jumpforce;

jumpforce -= 0.2;