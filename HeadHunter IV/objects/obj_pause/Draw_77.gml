/// @description Insert description here
// You can write your code in this editor
if(state==0)
{
	surface_set_target(surf);
	//draw_clear(c_black);
	draw_surface(application_surface,0,0);
	surface_reset_target();
	state=1;

	instance_deactivate_all(true);
	instance_activate_object(obj_main_controller);
}