/// @description Insert description here
// You can write your code in this editor
if obj_player.buildMode
{
	// vault
	var cameraX = camera_get_view_x(view_camera[0]);
	var cameraY = camera_get_view_y(view_camera[0]);
	var relativeXv = 32;
	var relativeYv = 32;
	var screenXv = x + relativeXv - cameraX;
	var screenYv = y + relativeYv - cameraY;
	draw_sprite_ext(spr_block_vault, 1, screenXv, screenYv, 0.5, 0.5, 0, c_white, 1)
	
	// crafter
	var relativeXc = 107;
	var relativeYc = 32;
	var screenXc = x + relativeXc - cameraX;
	var screenYc = y + relativeYc - cameraY;
	draw_sprite_ext(spr_block_crafter, 1, screenXc, screenYc, 0.5, 0.5, 0, c_white, 1)
	// crossbow
	var relativeXcr = 182;
	var relativeYcr = 32;
	var screenXcr = x + relativeXcr - cameraX;
	var screenYcr = y + relativeYcr - cameraY;
	draw_sprite_ext(spr_crossbow_tower, 1, screenXcr, screenYcr, 1, 1, 0, c_white, 1)
	// inferno
	var relativeXi = 257;
	var relativeYi = 32;
	var screenXi = x + relativeXi - cameraX;
	var screenYi = y + relativeYi - cameraY;
	draw_sprite_ext(spr_inferno, 1, screenXi, screenYi, 1, 1, 0, c_white, 1)
	// cannon
	var relativeXca = 332;
	var relativeYca = 32;
	var screenXca = x + relativeXca - cameraX;
	var screenYca = y + relativeYca - cameraY;
	draw_sprite_ext(spr_grid_cannon, 1, screenXca, screenYca, 0.5, 0.5, 0, c_white, 1)
	// wall
	var relativeXw = 407;
	var relativeYw = 32;
	var screenXw = x + relativeXw - cameraX;
	var screenYw = y + relativeYw - cameraY;
	draw_sprite_ext(spr_wall_transparant, 1, screenXw, screenYw, 1, 1, 0, c_white, 1)
}
else if !obj_player.buildMode
{
	// axe
	var cameraX = camera_get_view_x(view_camera[0]);
	var cameraY = camera_get_view_y(view_camera[0]);
	var relativeXa = 32;
	var relativeYa = 32;
	var screenXa = x + relativeXa - cameraX;
	var screenYa = y + relativeYa - cameraY;
	draw_sprite_ext(obj_player.currentAxe.sprite_index, 1, screenXa, screenYa, 0.5, 0.5, 0, c_white, 1)
	
	// pickaxe
	var relativeXp = 180;
	var relativeYp = 32;
	var screenXp = x + relativeXp - cameraX;
	var screenYp = y + relativeYp - cameraY;
	draw_sprite_ext(obj_player.currentPickaxe.sprite_index, 1, screenXp, screenYp, 0.5, 0.5, 0, c_white, 1)
	// spear
	var relativeXs = 107;
	var relativeYs = 32;
	var screenXs = x + relativeXs - cameraX;
	var screenYs = y + relativeYs - cameraY;
	draw_sprite_ext(obj_player.currentSpear.sprite_index, 1, screenXs, screenYs, 0.5, 0.5, 0, c_white, 1)
}
