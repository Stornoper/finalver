/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, obj_mouse)
{
	if keyboard_check_released(ord("L"))
	{
		instance_destroy()
	}
}
if hitPoints <= 0
{
	room_goto(failRoom);
}