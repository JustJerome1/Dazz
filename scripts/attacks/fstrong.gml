set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("clyde_1"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 38);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG,2);

//main projectile
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("fstrongclyde"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, -1);
//animation is set through hitbox_update

set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 38);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 75)
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 65)
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 0); //set to 0 here, updated later on
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
//set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 5);
//set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_AIR_FRICTION, 0.15);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
//set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 200);

//kill hit
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 99);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 125)
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 65);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_SDI_MULTIPLIER, 1);
//set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));

