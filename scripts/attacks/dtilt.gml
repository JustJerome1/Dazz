set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT,2);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
// set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 88);
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -10);
// set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 23);
// set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 23);
// set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
// set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 8);
// set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 80);
// set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
// set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 80);
// set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
// set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .5);
// set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
// set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .35);
// set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));