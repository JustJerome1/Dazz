//CODE TO USE FOR SPAWNING

var hat_exists = instance_exists(hat_object);
var first_item = rotateItems();

//position to spawn the item from, may not be applicable everywhere
var spawn_pos;
spawn_pos =  hat_exists ? [hat_object.x, hat_object.y-14] : [x+(8*spr_dir), y-30];

//EXECUTION ITEMS.
//Some items trigger and run through an animation automatically -- these are Automatic Items, "Autos".
//Whereas some need an additional Dspecial input to be activated -- these are Execution Items, "Execs".
var exec_items = [0,2,3,8];
exec_item_state = setExecState(exec_items,first_item);

//Save exec item for later and 
if exec_item_state == 0
{
	exec_item = first_item;
	exec_item_obj = !instance_exists(exec_item_obj) ? instance_create(spawn_pos[0],spawn_pos[1],"obj_article3") : exec_item_obj;
	exec_item_obj.hat_item = hat_exists;
}

//DO SOMETHING BASED ON ITEM ---- EDIT THESE CASES
switch (first_item)
{
	//ROGER (my beloved)	
	case 0:
	if (exec_item_obj.hat_item == 1)
	{
		exec_item_obj.x = hat_object.x;
		exec_item_obj.y = hat_object.y - 20;
	}
	else
	{
		exec_item_obj.x = x + (10 * spr_dir);
		exec_item_obj.y = y - 20;
	}
	exec_item_obj.mask_index = sprite_get("roger");
	exec_item_obj.spr_dir = spr_dir;
	break;
	
	//TIME BOMB
	case 1:
	
	break;
	
	//FREEZY BALL
	case 2:

	break;
	
	//SPIKE
	case 3:
	
	break;
	
	//CLOTH KIDS
	case 4:
	var which_kid = random_func(2,3,true);
	
	//switch statement for each kid
	switch (which_kid)
	{
		case 0:
		
		break;
		
		case 1:
		
		break;
		
		case 2:
		
		break;
	}
	break;
	
	//CRANE CLAW
	case 5:
	
	break;
	
	//SELF DETONATE
	case 6:
	if (hat_exists == 1)
	{
		create_hitbox(AT_DSPECIAL_2, 2, hat_object.x, hat_object.y)
		hat_object.sprite_index = asset_get("empty_sprite");
	}
	
	break;
	
	//OTTO1 8-BALL
	case 7:
	
	break;
	
	//N/A BEAM
	case 8:
	
	break;
	
	//MALACHI
	case 9:
	
	break;
}

#define setExecState(ar,first)
return (array_find_index(ar, first) != -1) - 1

#define getItem()
var _roll = argument0;

var result = -1;

if clamp(_roll, 0, 39) == _roll
{
	result = 0;
}
else if clamp(_roll, 40, 69) == _roll
{
	result = 1;
}
else if clamp(_roll, 70, 89) == _roll
{
	result = 2;
}
else if clamp(_roll, 90, 104) == _roll
{
	result = 3;
}
else if clamp(_roll, 105, 119) == _roll
{
	result = 4;
}
else if clamp(_roll, 120, 132) == _roll
{
	result = 5;
}
else if clamp(_roll, 133, 143) == _roll
{
	result = 6;
}
else if clamp(_roll, 143, 150) == _roll
{
	result = 7;
}
else if clamp(_roll, 151, 157) == _roll
{
	result = 8;
}
else if clamp(_roll, 158, 160) == _roll
{
	result = 9;
}


return result;

#define rotateItems()
var items_arr = array_clone(items)

var item_rotated = items_arr[0];
items[0] = items_arr[1];
items[1] = items_arr[2];

var seed = (player+get_gameplay_time()) mod 11;
var roll = round(random_func(seed, 160, false));
var itemtoplace = getItem(roll);

var i = 0;
while itemtoplace == items[0] or itemtoplace == items[1] or itemtoplace == item_rotated
{
	seed = (i+1+player+get_gameplay_time()) mod 12;
	roll = round(random_func(seed, 160, false));
	itemtoplace = getItem(roll);
	
	i++;
}

items[2] = itemtoplace;

return item_rotated;
