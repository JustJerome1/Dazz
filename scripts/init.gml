hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .17;
crouch_anim_speed = 0.0005;
walk_anim_speed = .3;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 7.5;
dash_speed = 6.5;
//hatless dash speeds
base_initial_dash_speed = initial_dash_speed;
base_dash_speed = dash_speed;
hatless_initial_dash_speed = 8;
hatless_dash_speed = 7;
//e

dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = 0.3; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
/*djump_accel = -2.2
djump_accel_start_time = 6
djump_accel_end_time = 60*/
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .045;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 10;
crouch_recovery_frames = 4;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//jab
hit_jab3 = false;

//bair stuff
bair_held_which = -1;
bair_charge = 0;
bair_max_charge = 15;
bair_stars = [noone,noone,noone];
var cur = get_player_color(player);
charge_color = make_color_rgb(get_color_profile_slot_r(cur, 2),get_color_profile_slot_g(cur, 2),get_color_profile_slot_b(cur, 2));

doublej_hsp = 0;
wandhit_sfx1 = sound_get("Wand-Hit");

max_num_items = sprite_get_number(sprite_get("hudslots"));
items = [];

for (var i = 0; i < 3; i++)
{
    var seed = (1+player+i) mod 10;;
    var itemtoplace = random_func(seed, max_num_items,true);
    while (array_find_index(items, itemtoplace) != -1)
    {
        seed = (seed + 1) mod 10;
        itemtoplace = random_func(seed, max_num_items,true);
    }
    
    items[i] = itemtoplace;
}

print(items)

initial_hat_speed = 8;
initial_hat_angle = 5;

hat_object = noone;
plush = 0;
taunt_timer = 0;
dtilt_jump = false;

//uspec
uspec_spin_dir = 0;
uspec_spin_old = 0;
uspec_spin_set = 0;
uspec_spin_set_old = 0;
uspec_spin_point_move = 0;
uspec_spin_point = 0;
uspec_spin_timer = 0;
uspec_spin_point_move_old = 0;
uspec_spin_change = false;
uspec_spin_dif = 0;

//nspec
hatted_id = undefined; //Grabbed player's ID



//effects
fx_parry = hit_fx_create(sprite_get("parry_effect"),12);

//Dspec stuff
exec_item_obj = noone;
roger = noone;

otto_effect = hit_fx_create(sprite_get("hfx_big_black"), 48)
otto_create = hit_fx_create(sprite_get("hfx_small_black"), 32)
explosion = hit_fx_create(sprite_get("selfdetonate"), 55)
active = 0;

#define foo
/// foo(a, b, c, d, ?e = undefined, ?f = undefined, g = 10, h = "ay lmao";)
var a = argument[0], b = argument[1], c = argument[2], d = argument[3];
var e = argument_count > 4 ? argument[4] : undefined;
var f = argument_count > 5 ? argument[5] : undefined;
var g = argument_count > 6 ? argument[6] : 10;
var h = argument_count > 7 ? argument[7] : "ay lmao";;

return (a / b) + power(sin(c),2) - d;