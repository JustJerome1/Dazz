//#region Hurt

if (instance_exists(hat_object)) //changes hurt sprites when hat is out
{
    if (sprite_index = sprite_get("hurt"))
    sprite_index = sprite_get("hurt_hatless")
    else if (sprite_index = sprite_get("uphurt"))
    sprite_index = sprite_get("uphurt_hatless")
    else if (sprite_index = sprite_get("downhurt"))
    sprite_index = sprite_get("downhurt_hatless")
    else if (sprite_index = sprite_get("bouncehurt"))
    sprite_index = sprite_get("bouncehurt_hatless")
    else if (sprite_index = sprite_get("hurtground"))
    sprite_index = sprite_get("hurtground_hatless")
    else if (sprite_index = sprite_get("parry"))
    sprite_index = sprite_get("parry_hatless")
}

//#endregion

//#region Strongs

    //#region Fstrong
if(attack == AT_FSTRONG){
     if(window == 2 && state == PS_ATTACK_GROUND){
    	
    	    image_index = (floor(strong_charge / 10) % 10) + 6;
    	
     }
}

    //#endregion
    
//#endregion

//#region Specials

    //#region Uspecial
if(attack == AT_USPECIAL){
    if(window == 5 && state == PS_ATTACK_AIR){
        if(image_index > 17){
            image_index = (floor(window_timer / 7) % 2) + 18;
        }else{
            if(window_timer < 18){
                image_index = (floor(window_timer / 9) % 2) + 16;
            }else{
                image_index = 18
            }
        }
    }
}
    
    //#endregion
    
//#endregion
    
// // hatless anims
if instance_exists(hat_object) {
    switch(state) {
        case PS_IDLE:
            sprite_index = sprite_get("idle_hatless")
            image_index = state_timer*idle_anim_speed
            break;
        case PS_WALK:
             sprite_index = sprite_get("walk_hatless")
             image_index = state_timer*walk_anim_speed
            break;
        case PS_DASH_START:
             sprite_index = sprite_get("dashstart_hatless")
            break;
        case PS_DASH:
            sprite_index = sprite_get("dash_hatless")
            image_index = state_timer*dash_anim_speed
            break;
        case PS_DASH_STOP:
            sprite_index = sprite_get("dashstop_hatless")
            break;
        case PS_DASH_TURN:
            sprite_index = sprite_get("dashturn_hatless")
            break;
        case PS_WALK_TURN:
            sprite_index = sprite_get("walkturn_hatless")
            break;
        case PS_PARRY_START:
            sprite_index = sprite_get("idle_hatless")
            break;
        case PS_PARRY:
            sprite_index = sprite_get("parry_hatless")
            break;
        case PS_CROUCH:
            sprite_index = sprite_get("crouch_hatless")
            crouch_startup_frames = 3;
            crouch_active_frames = 1;
            crouch_recovery_frames = 2;
            break;
        case PS_LAND:
            sprite_index = sprite_get("land_hatless")
            image_index = state_timer*0.5;
            break;
        case PS_LANDING_LAG:
            sprite_index = sprite_get("landinglag_hatless")
            image_index = state_timer*(2/landing_lag_time);
            break;
        case PS_JUMPSQUAT:
            sprite_index = sprite_get("jumpstart_hatless")
            break;
        case PS_FIRST_JUMP:
            sprite_index = sprite_get("jump_hatless")
            break;
        case PS_IDLE_AIR:
            sprite_index = sprite_get("jump_hatless")
            break;
        case PS_DOUBLE_JUMP:
            sprite_index = sprite_get("doublejump_hatless")
            break;
        case PS_WALL_JUMP:
            sprite_index = sprite_get("walljump_hatless")
            break;
        case PS_AIR_DODGE:
            sprite_index = sprite_get("airdodge_hatless")
            break;
        case PS_PRATFALL:
            sprite_index = sprite_get("pratfall_hatless")
            break;
        case PS_PRATLAND:
            sprite_index = sprite_get("land_hatless")
            image_index = 1;
            break;
        case PS_WAVELAND:
            sprite_index = sprite_get("waveland_hatless")
            image_index = state_timer*0.25;
            break;
    }
} else {
    crouch_startup_frames = 3;
    crouch_active_frames = 10;
    crouch_recovery_frames = 4;
}
    
if(state == PS_SPAWN)
{
    if(introTimer < 27 && introTimer >= 0)
    {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    }
    else if (introTimer < 0)
    {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } 
    else
        sprite_index = sprite_get("idle");
}