set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("ftilt"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 5);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT,1);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 66);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 66);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_CAMERA_SHAKE, 2);


// set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
// set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
// set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 73);
// set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -13);
// set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 55);
// set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 10);
// set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 1);
// set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 4);
// set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 9);
// set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 275);
// set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 8);
// set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, .8);
// set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 10);
// set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .7);
// set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
// set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
// set_hitbox_value(AT_FTILT, 3, HG_EXTRA_CAMERA_SHAKE, 2);
// set_hitbox_value(AT_FTILT, 3, HG_GROUNDEDNESS, 2);
