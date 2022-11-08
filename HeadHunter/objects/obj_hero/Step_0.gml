/// @description Insert description here
// You can write your code in this editor


depth=-y;

//personaggio segue il mouse
var direc = point_direction(x,y,mouse_x,mouse_y);
//speed=1;
//direction=dir;
var dist=point_distance(x,y,mouse_x,mouse_y)

//PARTE DI MOVIMENTO E DASH
if(mouse_check_button_pressed(mb_left) && !dash)
{
	dash=true;
	spd=10;
}
if(dash)
{
    spd*=0.9;
    if(spd<0.2)
    {
	spd=0;
	dash=false;
    }
}
if(dist>8)
{
	if(!dash)
	{
		dir=direc;
		spd=1;
	}
}
else
{
	if(!dash)
	{
		spd=0;	
	}
}

	x+=dcos(dir)*spd; //mettendo la d fa si che si accettino i gradi anziché radianti
	y-=dsin(dir)*spd;

//PARTE GRAFICA

if(dash)
{
	sprite_index=spr_hero_attack;
	instance_create_depth(x+random_range(-8,8),y,depth-1,obj_fx_cloudlet); //particelle
    
	ghostCrono++;
	if(ghostCrono >= ghostTimer)
	{
		ghostCrono=0;
		if(spd>2)
		{
		   var ghost= instance_create_depth(x,y,depth+1,obj_fx_ghost);
    	   ghost.sprite_index=sprite_index;
	       ghost.image_xscale=image_xscale;
		}

	}


}
else
{
    if(spd>0)
    {
	    if(mouse_x>x)
	   {
		   image_xscale=1; 
	   }
	   else
       {
	       image_xscale=-1; 
       }
	   sprite_index=spr_hero_walk;
    }

}


//GESTIONE CLAMP EROE (Per non uscire dalla mappa
x=clamp(x,32,room_width-32);
y=clamp(y,32,room_width-32);


//GESTIONE COLLISION
with(obj_dummy) //con with entriamo in ogni obj dummy e tutto quello che scriviamo dentro finisce solo nel dummy
                //se voglio riferirmi alla roba del hero uso other
{
	var dist=point_distance(x,y, other.x,other.y);
	if(dist<8 && other.dash)
	{
	  instance_destroy();	
	}
}


	//if(sprite_index != spr_hero_walk) //cosa particolare, gli sprite sono trattati come numeri
	//{
	//	sprite_index=spr_hero_walk;
	//}
	
	
	//if(mouse_x >x) //per flippare il personaggio a seconda di dove va il mouse
	//{
	//	image_xscale=1;
	//}
	//else
	//{
	//	image_xscale=-1;
	//}
	
	//	if(sprite_index != spr_hero_idle) //cosa particolare, gli sprite sono trattati come numeri
	//{
	//	sprite_index=spr_hero_idle;
	//}
	//speed=0;
	
	//speed=spd;
	//direction=dir;
	//oppure posso usare anche x e y