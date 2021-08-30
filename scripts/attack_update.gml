//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack)
{
	case AT_EXTRA_2:
		if window == 2 and window_timer == 7 and !hitpause
		{
			sound_play(asset_get("sfx_swipe_medium2"))	
		}
	break;
	case AT_FSPECIAL:
		can_move = false;
		vsp = sign(vsp) == -1 ? vsp : floor(lerp(vsp, 0, 0.1))
		hsp *= 0.98
		if window == 2 and window_timer == 1
		{
			var start_angle = initial_hat_angle + ((180-(initial_hat_angle*2))*(spr_dir == -1))
			var dir_ang = !joy_pad_idle and (clamp(joy_dir, -20, 20) != joy_dir and clamp(joy_dir, 160, 200) != joy_dir) ? (2*floor(joy_dir / 180))-1 : 0;
			var angle_to_add = -dir_ang*35 * spr_dir
			//print(start_angle+angle_to_add)
			
			var throw_hsp, throw_vsp;
			throw_hsp = lengthdir_x(initial_hat_speed,start_angle+angle_to_add);
			throw_vsp = lengthdir_y(initial_hat_speed,start_angle+angle_to_add);
			
			var hat = instance_create(x+(spr_dir*36),y-36,"obj_article2");
			hat.hsp = throw_hsp;
			hat.vsp = throw_vsp;
		}
	break;
	//hatless fspecial return
	case AT_FSPECIAL_2:
		can_move = false;
		vsp = sign(vsp) == -1 ? vsp : floor(lerp(vsp, 0, 0.1))
		hsp *= 0.98
		break;
	case AT_DSPECIAL:
		if window == 2 and window_timer = 1
		{
			user_event(1);
		}
		break;
	case AT_TAUNT:
		switch window
		{
			case 1: 
			{
				//plush = random_func(3+player, 22, true);
				plush = 14;
				taunt_timer = 0;
			}
			break;
			case 3:
				if taunt_down
				{
					if taunt_timer <= 360
					{
						taunt_timer++;
						window_timer = min(38, window_timer)
					}
					else
					{
						window++;
						window_timer = 0;
					}
				}
			break;
		}
		
	break
	case AT_TAUNT_2:
	if (window_timer == 4)
	{
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
	}
	break;
	
	//  // strongs code
	
	case AT_FSTRONG:
		if window == 2 && (get_gameplay_time() mod 12 == 0 or window_timer == 1) {
			sound_play(asset_get("sfx_bird_sidespecial"),false,0,0.15,(random_func(4,5,true)/10)+1)
			sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.1,(random_func(4,5,true)/10)+1.25)
		}
		if window == 3 && window_timer == 17 {
			sound_play(asset_get("sfx_blow_weak2"),false,0,0.35,1.65)
			sound_stop(sound_get("clyde_1"))
		}
		break;
	
	case AT_USTRONG:
		if window == 1 && window_timer == get_window_value(AT_USTRONG,1,AG_WINDOW_LENGTH)-2 {
			sound_play(sound_get("herald_1"))
		}
		if window == 2 {
			if window_timer mod 4 == 0 {
				sound_play(asset_get("sfx_zetter_fireball_fire"),false,0,0.45,(random_func(4,4,true)/10)+0.6)
			}
			if window_timer mod 6 == 0 {
				sound_play(asset_get("sfx_may_root"),false,0,0.35,(random_func(4,3,true)/10)+0.55)
			}
			if window_timer == get_window_value(AT_USTRONG,1,AG_WINDOW_LENGTH)-1 {
				sound_play(sound_get("herald_2"))
			}
		}
		if window == 4 && window_timer == 4 {
				sound_play(asset_get("sfx_forsburn_spew2"),false,0,0.5,0.95)
				sound_play(asset_get("sfx_forsburn_breath"),false,0,0.3,1.75)
			}
		break;
	
	case AT_DSTRONG:
		if window == 1 {
			if window_timer == 4 {
				sound_play(asset_get("sfx_swipe_weak2"),false,0,0.5,0.95)
				sound_play(sound_get("herald_1"))
			}
		}
		if window == 2 && window_timer == get_window_value(AT_DSTRONG,2,AG_WINDOW_LENGTH) {
			sound_play(asset_get("sfx_kragg_rock_shatter"),false,0,0.85,1.25)
			//sound_play(asset_get("sfx_kragg_rock_pillar"),false,0,0.65,0.85)
		}
		break;
	
	// // idk this part is someone else's
	
	case AT_DTILT:
		if window == 1 and window_timer == 1
		{
			dtilt_jump = false
		}
		
		var action = has_hit_player and !was_parried;
		if action and jump_down
		{
			dtilt_jump = true;
		}
			
		if !hitpause
		{
			//iasa_script();
			if dtilt_jump
			{
				set_state(PS_JUMPSQUAT)
				break;
			}
		}
	break;
	case AT_DAIR:
		if window == 4 and window_timer == 3 vsp -= 4
		break;
	// case AT_BAIR:
	// 	switch (window)
	//     {
	//         case 3:
	//     // 		if strong_down 
	//     // 		{
	//     // 			bair_held_which = 0;
	//     // 		}
	//     // 		else if attack_down
	//     // 		{
	//     // 			bair_held_which = 1;
	//     // 		}
	//     // 		else if (spr_dir == -1 ? right_stick_down : left_stick_down)
	//     // 		{
	//     // 			bair_held_which = 2;
	//     // 		}
	//             if (window_timer > 4 and attack_down)
	//             {
	//                 bair_held_which = 0;
	//             }
		        
	// 	        // if (bair_held_which != -1 and arr[bair_held_which]) or bair_charge >= bair_max_charge
	// 	        // {
	// 	        //     window++;
	// 	        //     window_timer = 0;
	// 	        // }
	//         break;
	//         case 4:
	//         if window_timer == 1
	//         {
	//             reset_attack_value(AT_BAIR, AG_LANDING_LAG);
	//             var mindamage, maxdamage;
	//             mindamage = 5;
	//             maxdamage = 8;
	//             if bair_held_which != -1 bair_charge = bair_max_charge
	//             // for (var i = 0; i < 3; i++)
	//             // {
	//             //     var t = 3*(i==0)
	//             //     set_hitbox_value(AT_BAIR, i+1, HG_DAMAGE, lerp(mindamage+t,maxdamage+t,bair_charge/bair_max_charge));
	//             // }
	            
	//             if bair_charge >= bair_max_charge and !hitpause
	//             {
	//                 set_attack_value(AT_BAIR, AG_LANDING_LAG, 14);
	//                 var size, xx, yy, h, v;
	//                 size = ["bot","mid","top"]
	//                 xx = [-44,-44,-44];
	//                 yy = [-28,-30,-32];
	//                 h = [-6,-8,-6];
	//                 v = [1.5, 0, -1.5];
	
	//                 for (var i = 0; i < 3; i++)
	//                 {
	//                     print("creating")
	//                     var particle = create_hitbox(AT_BAIR, 4, x, y)
	//                     bair_stars[i] = particle;
	//                     particle.sprite_index = sprite_get("bairparticle_"+string(size[i]));
	//                     particle.x = x+(xx[i]*spr_dir);
	//                     particle.y = y+yy[i];
	//                     particle.hsp = (h[i]*spr_dir) + hsp;
	//                     particle.vsp = v[i];
	//                 }
	//             }
	//         }
	//         break;
	//     }
	// break;
	case AT_JAB:
	switch window
	{
		case 1:
			if window_timer == 1 hit_jab3 = false
		break;
		case 9:
			if window_timer >= 4 and !hit_jab3
			{
				window = 11;
				window_timer = 0;
			}
		break;
	}
	break;
}

if(attack == AT_USPECIAL){
    hurtboxID.image_angle = spr_angle;
    can_fast_fall = false;
    can_move = false;
    if(window == 3){
        if(window_timer == 3){
            vsp = -8;
        }
        if(!joy_pad_idle){
            if(left_down){
                spin_hsp = -1;
            }
            if(right_down){
                spin_hsp = 1;
            }
        }
    }
    if(window == 4){
        if(spin_hsp != 0){
            hsp = ease_cubeOut(1*spin_hsp, 4*spin_hsp, spin_hsp_timer, 54)
        }
        //spr_angle += 10;
        if(window_timer == 1 && uspec_spin_count == 0){
            sprite_change_offset("uspecial", 67, 61);
            x += 3*spr_dir;
            y -= 33;
        }
        
        if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            uspec_spin_count += 1;
        }
        if(uspec_spin_count == 2){
            
            
            window = 5;
            window_timer = 0;
        }
        spin_hsp_timer++;
    }
    if(window == 5){
        uspec_spin_dir = joy_dir-90;
        
        if(window_timer < 5){
            if(!joy_pad_idle){
                uspec_spin_set = round(uspec_spin_dir/45)
                uspec_spin_point = uspec_spin_set*45;
            }
        }
                    
        
            
        //does new direction = old direction?
        if(uspec_spin_set_old != uspec_spin_set){
            uspec_spin_change = true;
        }
        if(uspec_spin_change){
            state_timer -= 10;
            uspec_spin_change = false;
            uspec_spin_timer = 0;
            uspec_spin_dif = angle_difference(uspec_spin_point, uspec_spin_point_old)
            //uspec_spin_point_move_old = uspec_spin_point_move
        }
        
        
        if(uspec_spin_timer < 10){
            uspec_spin_point_move += round(uspec_spin_dif/10)
        }
        spr_angle = uspec_spin_point_move
        uspec_spin_set_old = uspec_spin_set; //old direction
        uspec_spin_point_old = uspec_spin_point
        uspec_spin_timer++;
        
        
        
        
        
        
        if(window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)){
            sprite_change_offset("uspecial", 64, 94);
            //x -= 3*spr_dir;
            //y += 33;
        }

    }  
    
    if(window == 6){
        if(window_timer == 1){
        vsp = sin(degtorad(spr_angle - 90))*14
        hsp = -cos(degtorad(spr_angle - 90))*14
            if(hsp > 0){
                spr_dir = 1;
            }else{
                spr_dir = -1;
            }
            
        }
        hsp = lerp(hsp, 0, .01)
        vsp = lerp(vsp, 0, .01)
        
    }
    if(window == 7){
        if(window_timer == 1){
			uspec_reset = angle_difference(spr_angle, 0)
		}
		if(window_timer > 1){
			spr_angle -= round(uspec_reset/(get_window_value(attack,window,AG_WINDOW_LENGTH)-1));
		}
		
    }
    
    if(window >= 6 && !free){
        state = PS_PRATLAND    
    
    }
            
            
        
        
        
        
        
        
    
    
}
    
    //#endregion

//#endregion