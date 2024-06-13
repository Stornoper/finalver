/// @description Insert description here
// You can write your code in this editor
x = obj_player.x
y = obj_player.y
if obj_player.crafting
{
	visible = true
	if !obj_player.buildMode
	{
		if keyboard_check_pressed(ord("1")) 
			{
				selectedCraftable = giveCraftableobject("Axe")
				typeselected = 1
			}
		else if keyboard_check_pressed(ord("3"))  
			{
				selectedCraftable = giveCraftableobject("Pickaxe")
				typeselected = 3
			}
		else if keyboard_check_pressed(ord("2"))
			{
				selectedCraftable = giveCraftableobject("Spear")
				typeselected = 2
			}
	}
	else if obj_player.buildMode
	{
		if keyboard_check_pressed(ord("3"))  
			{
				selectedCraftable = obj_block_crossbow
				typeselectedbuild = 3;
			}
		else if keyboard_check_pressed(ord("4")) 
			{
				selectedCraftable = obj_block_inferno
				typeselectedbuild = 4;
			}
		else if keyboard_check_pressed(ord("5"))  
			{
				selectedCraftable = obj_block_cannon
				typeselectedbuild = 5;
			}
		else if keyboard_check_pressed(ord("6"))
			{
				selectedCraftable = obj_block_wall
				typeselectedbuild = 6;
			}
	}
	if selectedCraftable != obj_nothingselected
	{
		woodNeeded = selectedCraftable.woodNeeded;
		stoneNeeded = selectedCraftable.stoneNeeded;
		ironNeeded = selectedCraftable.ironNeeded;
	}
	
	
	
	if selectedCraftable != obj_nothingselected && wood_count >= woodNeeded && stone_count >= stoneNeeded && iron_count >= ironNeeded && keyboard_check_pressed(vk_enter) && typeselected != 0
	{
		show_debug_message(ironNeeded)
		wood_count = wood_count - woodNeeded
		stone_count = stone_count - stoneNeeded
		iron_count = iron_count - ironNeeded
		
		switch(typeselected)
		{
			case 1:
				obj_player.currentAxe = selectedCraftable
			break
			case 2:
				obj_player.currentSpear = selectedCraftable
			break
			case 3:
				obj_player.currentPickaxe = selectedCraftable
			break
		}
	typeselected = 0;
			
			
		
	}
	else if selectedCraftable != obj_nothingselected &&  wood_count >= woodNeeded && stone_count >= stoneNeeded && iron_count >= ironNeeded && keyboard_check_pressed(vk_enter) && typeselected = 0
	{
		wood_count = wood_count - woodNeeded
		stone_count = stone_count - stoneNeeded
		iron_count = iron_count - ironNeeded
		
		switch(typeselectedbuild)
		{
			case 3:
				crossbowLimit += 1;
			break
			case 4:
				InfernoLimit += 1;
			break
			case 5:
				cannonLimit += 1;
			break
			case 6:
				wallLimit += 1;
			break
		}
	typeselectedbuild = 0;
	}
}
else
{
	visible = false
}



