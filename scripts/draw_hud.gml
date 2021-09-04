if ("hat_object" not in self) exit;
/*
var hat = instance_exists(hat_object) ? "Hatless" : "Hat"
draw_debug_text(temp_x,temp_y-60,"Hat mode: " + hat)

draw_debug_text(temp_x,temp_y-90,"State Timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-105,"State: " + string(state))
draw_debug_text(temp_x,temp_y-75,"Frame: " + string(image_index))
draw_debug_text(temp_x,temp_y-120,"Item: " + string(items))
*/
draw_sprite_ext(sprite_get("hud"), get_gameplay_time() / 9.4, temp_x + 28, temp_y-18, 2, 2, 0, c_white, 1);

for (var icon = 0; icon < 3; icon++)
{
    draw_sprite_ext(sprite_get("hudslots2"), items[icon], temp_x + 30 + (icon*56), temp_y-20, 1, 1, 0, c_white, 1);
}

/*draw_debug_text(temp_x,temp_y - 135,instance_exists(exec_item_obj) ? string(exec_item_obj.id) : "nonexistent")
draw_debug_text(temp_x,temp_y - 150,string(exec_item_state));