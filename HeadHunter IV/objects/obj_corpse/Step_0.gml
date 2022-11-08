/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.001;
if(image_alpha <= 0.0)
{
	instance_destroy();
}