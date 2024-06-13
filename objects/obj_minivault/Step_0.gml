/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_block_vault)
{
	visible = true
	x = camera_get_view_x(view_camera[0]) + 992;
	y = camera_get_view_y(view_camera[0]) + 76;
}
else 
{
	visible = false;
}
