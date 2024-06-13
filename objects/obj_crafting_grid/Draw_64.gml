/// @description Insert description here
// You can write your code in this editor
if obj_player.crafting
{
	if true // wood text
	{
	if wood_count < woodNeeded
	{
		draw_set_color(c_red);
	}
	else
	{
		draw_set_color(c_white)
	}
	var cameraXwood = camera_get_view_x(view_camera[0]);
	var cameraYwood = camera_get_view_y(view_camera[0]);
	var relativeXwood = -392;
	var relativeYwood = -127;
	var screenXwood = obj_player.x + relativeXwood - cameraXwood;
	var screenYwood = obj_player.y + relativeYwood - cameraYwood;
	draw_text(screenXwood, screenYwood, string(wood_count) + "/" + string(obj_crafting_grid.woodNeeded));
	}
	if true // stone text
	{
	if stone_count < stoneNeeded
	{
		draw_set_color(c_red);
	}
	else
	{
		draw_set_color(c_white)
	}
	var cameraXstone = camera_get_view_x(view_camera[0]);
	var cameraYstone = camera_get_view_y(view_camera[0]);
	var relativeXstone = -200;
	var relativeYstone = -127;
	var screenXstone = obj_player.x + relativeXstone - cameraXstone;
	var screenYstone = obj_player.y + relativeYstone - cameraYstone;
	draw_text(screenXstone, screenYstone, string(stone_count) + "/" + string(obj_crafting_grid.stoneNeeded));
	}
	if true // iron text
	{
	if iron_count < ironNeeded
	{
		draw_set_color(c_red);
	}
	else
	{
		draw_set_color(c_white)
	}
	var cameraXiron = camera_get_view_x(view_camera[0]);
	var cameraYiron = camera_get_view_y(view_camera[0]);
	var relativeXiron = -392;
	var relativeYiron = 17;
	var screenXiron = obj_player.x + relativeXiron - cameraXiron;
	var screenYiron = obj_player.y + relativeYiron - cameraYiron;
	draw_text(screenXiron, screenYiron, string(iron_count) + "/" + string(obj_crafting_grid.ironNeeded));
	}
	// outcome
	if true
	{
	if typeselected != 0
	{
	var cameraXoutcome = camera_get_view_x(view_camera[0]);
	var cameraYoutcome = camera_get_view_y(view_camera[0]);
	var relativeXoutcome = +244;
	var relativeYoutcome = 0;
	var screenXoutcome = obj_player.x + relativeXoutcome - cameraXoutcome;
	var screenYoutcome = obj_player.y + relativeYoutcome - cameraYoutcome;
	draw_sprite(selectedCraftable.sprite_index, 1, screenXoutcome, screenYoutcome)
	}
	else if typeselectedbuild != 0
	{
	var cameraXoutcome = camera_get_view_x(view_camera[0]);
	var cameraYoutcome = camera_get_view_y(view_camera[0]);
	var relativeXoutcome = +244;
	var relativeYoutcome = 0;
	var screenXoutcome = obj_player.x + relativeXoutcome - cameraXoutcome;
	var screenYoutcome = obj_player.y + relativeYoutcome - cameraYoutcome;
	draw_sprite(selectedCraftable.gridsprite, 1, screenXoutcome, screenYoutcome)
	}
	}
}