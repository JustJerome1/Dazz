//#region Specials
    //#region uspecial
if(attack == AT_USPECIAL){
    uspec_spin_count = 0;
    vsp *= 0.6
    hsp *= 0.6
    spin_hsp_timer = 0;
    spin_hsp = 0;   
    uspec_spin_dir = 0;
    uspec_spin_old = 0;
    
    
uspec_spin_dir = 0;
uspec_spin_old = 0;
uspec_spin_set = 0;
uspec_spin_set_old = 0;
uspec_spin_point_move = 0;
uspec_spin_point = 0;
uspec_spin_point_old = 0;
uspec_spin_timer = 0;
uspec_spin_point_move_old = 0;
uspec_spin_change = false;
uspec_spin_dif = 0;
}

if attack == AT_UAIR and hat_object != noone
{
    attack = AT_EXTRA_2;
}

    //#endregion

//#endregion

//#region taunt

if (attack == AT_TAUNT and (left_down or right_down))
{
	attack = AT_TAUNT_2;
}
//#endregion

if instance_exists(hat_object) {
    switch(attack) {
        //hatless attack sprites
        case AT_JAB:
            set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab_hatless"));
            set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hatless_hurt"));
            break;
        case AT_FTILT:
            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt_hatless"));
            set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hatless_hurt"));
            set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
            break;
        case AT_DTILT:
            set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_hatless"));
            set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hatless_hurt"));
            break;
        case AT_UTILT:
            set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt_hatless"));
            set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hatless_hurt"));
            break;
        case AT_DATTACK:
            set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack_hatless"));
            set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hatless_hurt"));
            break;
        case AT_DAIR:
            set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair_hatless"));
            set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hatless_hurt"));
            break;
        case AT_NAIR:
            set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair_hatless"));
            set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hatless_hurt"));
            break;
        case AT_BAIR:
            set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_hatless"));
            set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hatless_hurt"));
            break;
        case AT_FAIR:
            set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair_hatless"));
            set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hatless_hurt"));
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("fair2_hatless"));
            set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("fair2_hatless_hurt"));
            break;
        case AT_USTRONG:
            set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_hatless"));
            set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hatless_hurt"));
            break;
        //case AT_DSTRONG: //for when hatless dstrong sprite exists
        //    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_hatless"));
        //    set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hatless_hurt"));
        //    break;
        case AT_FSTRONG:
            set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_hatless"));
            set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hatless_hurt"));
            break;
        
        //attacks that change based on hat or nah
        case AT_FSPECIAL:
            attack = AT_FSPECIAL_2;
            //if required later change so it can't return during attacks or maybe add a cooldown to fspec while
		    //any 'high commitment' actions are being done by the hat
            hat_object.state = 2;
			hat_object.state_timer = 0;
            break;
        
        
    }
} else {
    switch(attack) {
        case AT_JAB:
            set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
            set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
            break;
        case AT_FTILT:
            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
            set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
            set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
            break;
        case AT_DTILT:
            set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
            set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
            break;
        case AT_UTILT:
            set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
            set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
            break;
        case AT_DATTACK:
            set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
            set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
            break;
        case AT_DAIR:
            set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
            set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
            break;
        case AT_NAIR:
            set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("nair"));
            set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
            break;
        case AT_BAIR:
            set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
            set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
            break;
        case AT_FAIR:
            set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
            set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("fair2"));
            set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("fair2_hurt"));
            break;
        case AT_USTRONG:
            set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
            set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
            break;
        //case AT_DSTRONG: //for when hatless dstrong sprite exists
        //    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
        //    set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
        //    break;
        case AT_FSTRONG:
            set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
            set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
            break;
            
            
        
    }
}