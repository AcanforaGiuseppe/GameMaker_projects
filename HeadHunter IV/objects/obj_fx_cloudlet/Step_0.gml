/// @description Insert description here
// You can write your code in this editor

//speed*=0.9;
//image_alpha*=0.9;

image_alpha *= increment;
speed *= increment;
if(image_alpha <0.1)
{
   instance_destroy();	
}