sprite_index = sprite_get("fspecial_projectile_start")
player_id.hat_object = id;
grav = 0.2
ignores_walls = false;
state = 0;
state_timer = 0;
lock_state = false;

mask_index = sprite_get("hat_mask");

//Animation speeds for the hat states.
state_anim_speeds = [0.26,0.3,0]

//Whether the hat's anim should stop on the last frame of the animation for each state.
state_stop_at_last = [false, true, true]

//current hitbox that is active
linked_hitbox = noone;
