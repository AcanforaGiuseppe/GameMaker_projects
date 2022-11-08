/// @description Insert description here
// You can write your code in this editor
//show_debug_message("hello world");


//GESTIONE MEGLIO CON STATE MACHINE
state = HeroState.Idle;

dieTimer = 60;
crono = 0;

x = room_width*0.5;
y = room_height*0.5;

u_left= shader_get_uniform(shaderOutline, "u_left");
//u_top = shader_get_uniform(shaderOutline, "u_top");
u_right= shader_get_uniform(shaderOutline, "u_right");
//u_bottom= shader_get_uniform(shaderOutline, "u_bottom");
u_width =shader_get_uniform(shaderOutline, "u_width");


//le proprieta scritte qui rimangono per tutta 
//la vita dell'oggetto e sono blu
//spd=0;
//dir=0;
//dmg=1;
//dash=false;
//ghostCrono=0;
//ghostTimer=2;

//inizia da fermo
//sprite_index=spr_hero_idle;
//image_speed=1;



/*
x=0;
y=0
speed=0
direction=0;
image_alpha=0; //sprite trasparenter da 0 1
image_angle=0; //rotazione sprite da 0 a 360
image_speed=0; //velocitá di riproduzione
sprite_index= spr_herp; //quanti sprite puó usare un oggetto
image_index=0; //mostra il fotogramma dello sprite
*/