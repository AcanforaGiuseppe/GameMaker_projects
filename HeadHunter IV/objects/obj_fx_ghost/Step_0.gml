/// @description Insert description here
// You can write your code in this editor


//GESTIONE EFFETTO GHOST DURANTE ATTACCO
image_alpha*=0.9;
if(image_alpha <0.1)
{
instance_destroy();	
}