function buildFunction()
{
	x = round(mouse_x/16)*16;
	y = round(mouse_y/16)*16;

	if mouse_check_button_pressed(mb_left) && !place_meeting(x, y, obj_collission) && !place_meeting(x, y, obj_player) && objCount < objLimit && !place_meeting(x, y, obj_collission_wall) && !place_meeting(x,y, obj_zombie)
	{
		instance_create_layer(x,y, "Buildables", block);
		if object_index != obj_block_wall_transparant
		{
		instance_create_layer(x,y, "Buildables", obj_collission);
		}
		else
		{
		instance_create_layer(x,y, "Buildables", obj_collission_wall);
		}
	}
	if keyboard_check_pressed(ord("B")) && obj_player.buildMode
	{
		instance_destroy();
		obj_player.buildMode = false;
	}
}

function clearSelection()
{
	if buildMode
	{
		if oneselected
		{
			instance_destroy(obj_block_vault_transparant);
			oneselected = false;
		}
		if twoselected
		{
			instance_destroy(obj_block_crafter_transparant);
			twoselected = false;
		}
		if threeselected
		{
			instance_destroy(obj_block_crossbow_transparant);
			threeselected = false;
		}
		if fourselected
		{
			instance_destroy(obj_block_inferno_transparant);
			fourselected = false;
		}
		if fiveselected
		{
			instance_destroy(obj_block_cannon_transparant);
			fiveselected = false;
		}
		if sixselected
		{
			instance_destroy(obj_block_wall_transparant);
			sixselected = false;
		}
	}
	if !buildMode
	{
		if oneselectednormal
		{
			oneselectednormal = false;
		}
		if twoselectednormal
		{
			twoselectednormal = false;
		}
		if threeselectednormal
		{
			threeselectednormal = false;
		}
		if fourselectednormal
		{

			fourselectednormal = false;
		}
	}
}
function giveCraftableobject(tool)
{
	if tool = "Axe"
	{
		switch (obj_player.currentAxe) 
		{
		case obj_axe_wood:
			return obj_axe_stone;
        break;
		case obj_axe_stone:
			return obj_axe_iron;
		break;
		case obj_axe_iron:
			return obj_nothingselected
        break;
		}
	}
	else if tool = "Pickaxe"
	{
		switch (obj_player.currentPickaxe) 
		{
		case obj_pickaxe_wood:
			return obj_pickaxe_stone;
        break;
		case obj_pickaxe_stone:
			return obj_pickaxe_iron;
		break;
		case obj_pickaxe_iron:
			return obj_nothingselected
        break;
		}
	}
	else if tool = "Spear"
	{
		switch (obj_player.currentSpear) 
		{
		case obj_spear_wood:
			return obj_spear_stone;
        break;
		case obj_spear_stone:
			return obj_spear_iron;
		break;
		case obj_spear_iron:
			return obj_nothingselected
        break;
		}
	}
}

