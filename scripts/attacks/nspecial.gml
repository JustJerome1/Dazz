//rainbeon code wow

set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7); //9
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//Startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 9);

//Grab
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//Hold down
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//Speen Startup (Has hit player, skip to window 8 if not)
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 5);

//Pre-launch startup (SFX)
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_burnconsume"));
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 5);

//Launch
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 16);

//Post-launch endlag
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 32);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);

//Normal endlag (Has NOT hit player)
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 25);

/*
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 25);
*/

set_num_hitboxes(AT_NSPECIAL, 3);

//Grab box 1
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -57);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_bite"));

//Grab box 2
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 52);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 65);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 69);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_bite"));

//Launch box
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 31);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 58);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 2);
