/// @description Insert description here
// You can write your code in this editor

depth=-(y+altitude);

var hero= global.mc.hero;
var dist= point_distance(x,y+altitude,hero.x,hero.y);
if(dist<8)
{
	if(hero.state==HeroState.Attack) //se sono in attacco distruggo il bullet
	{   
		var l= instance_create_depth(x,y,depth,obj_fx_blood);
		l.sprite_index = spr_bullet_left;
	    var r= instance_create_depth(x,y,depth,obj_fx_blood);
		r.sprite_index = spr_bullet_right;
		instance_destroy();	
	}
	else
	{
		if(hero.state < HeroState.Die)
		{
			with(hero)
			{
				scr_heroSetState(HeroState.Die);	
			}
			
			//oppure
			
			//scr_heroSetState(hero,HeroState.Die);
			//e poi aggiungere with(argument0){} in heroSetState che racchiude tutto il resto del codice
		}
	}
}

if(x<0 || x>room_width || y<0 || y>room_height)
{
	instance_destroy();	
}