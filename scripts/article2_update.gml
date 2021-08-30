lock_state = false;

var linked_hitbox_spoint = [floor(x+hsp), floor(y - 10 + vsp)];
var last_frame = sprite_get_number(sprite_index);
image_index = state_stop_at_last[state] and (floor(image_index) mod last_frame) >= last_frame-1 ? last_frame-1 : image_index + state_anim_speeds[state];
//print(state_stop_at_last[state])

//var below_hit = place_meeting(x+hsp,y+vsp,asset_get("par_block")) or place_meeting(x+hsp,y+vsp,asset_get("par_jumpthrough"))

vsp = free ? vsp+grav : 0;

switch (state)
{
    case 0:
        hsp *= 0.99;
        
        if instance_exists(linked_hitbox)
        {
            linked_hitbox.x = linked_hitbox_spoint[0]
            linked_hitbox.y = linked_hitbox_spoint[1]
        }      
        
        if state_timer mod 6 == 0 and hitstop == 0
        {
            linked_hitbox = create_hitbox(AT_FSPECIAL, 1, linked_hitbox_spoint[0], linked_hitbox_spoint[1]);
            if sign(hsp) == -1 linked_hitbox.kb_angle = 180-linked_hitbox.kb_angle
        }
        
        if !free
        {
            if instance_exists(linked_hitbox)
            {
                instance_destroy(linked_hitbox)
                linked_hitbox = noone;    
            }
            
            vsp = 0;
            image_index = 0;
            setState(1);
            sprite_index = sprite_get("fspecial_projectile_end")
        }
    break;
    case 1:
        hsp = lerp(hsp, 0, 0.2);
    break;
    //hat return state
    case 2:
        var die_time = 12;
        with(oPlayer){other.die_time = get_window_value(AT_FSPECIAL_2,1,AG_WINDOW_LENGTH)-2}
        hsp = lerp(hsp, 0, 0.35);
        vsp = lerp(vsp, 0, 0.35);
        sprite_index = sprite_get("fspecial_return")
        image_index = ease_linear(0,4,state_timer,die_time)
        if state_timer >= die_time {
            player_id.hat_object = noone;
            instance_destroy()
            exit;
        }
        break;
}

if hsp != 0 and clamp(abs(hsp),0,1.5) == hsp hsp = 0


state_timer += !lock_state
if player_id.hat_object != self instance_destroy();
#define setState(_state)
state = _state
state_timer = 0;
lock_state = true;