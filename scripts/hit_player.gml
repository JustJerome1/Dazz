//#region ftilt
// if(my_hitboxID.attack == AT_FTILT)
// {
//     sound_play( wandhit_sfx1 , false,false, 5.4 );
// }
//#endregion 

switch my_hitboxID.attack
{
	case AT_JAB:
		if my_hitboxID.hbox_num == 4 hit_jab3 = true;
		//gamefeel juice
		if my_hitboxID.hbox_num != 2 {
			sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
			sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		}
	break;
	case AT_DAIR:
		var hb, vsp_to_apply;
		hb = my_hitboxID.hbox_num == 4;
		vsp_to_apply = floor(min((old_vsp - (!fast_falling)*(sign(vsp) == 0 ? -1 : sign(vsp)) )*!hb - ((6 + (min(get_player_damage( hit_player_obj.player )/30,6)))*hb), 0));
		old_vsp = vsp_to_apply;
		
		if !hit_player_obj.clone and hit_player_obj.free
		{
			hit_player_obj.x = lerp(hit_player_obj.x, x, 0.05)
			hit_player_obj.y = lerp(hit_player_obj.y, y+10, 0.08)
		}
	break;
	
	case AT_DATTACK:
		if !hit_player_obj.clone and my_hitboxID.hbox_num != 2
		{
			hit_player_obj.x = lerp(hit_player_obj.x, x + ((100 + (40*(my_hitboxID.hbox_num - (my_hitboxID.hbox_num > 2))))*spr_dir), 0.2)
			hit_player_obj.y = lerp(hit_player_obj.y, y-6, 0.15 + (.2*my_hitboxID.hbox_num == 1))			
		}
	break;
	case AT_EXTRA_2:
		if !hit_player_obj.clone and (other.y <= y)
		{
			old_vsp -=2
		}
	case AT_NAIR:
		if !hit_player_obj.clone
		{
			switch my_hitboxID.hbox_num
			{
				case 1:
					hit_player_obj.x = lerp(hit_player_obj.x, x + (40*spr_dir), 0.15)
				break;
				case 2:
					old_vsp -= 3
				break;
			}
			//hit_player_obj.y = lerp(hit_player_obj.y, y-6, 0.15)			
		}
		//gamefeel juice
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
	break;
	
	// // strongs code both for gamefeel and functionality
	case AT_FSTRONG:
		//clyde bite
		if my_hitboxID.orig_player == player {
			if my_hitboxID.hbox_num == 1 {
				sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.85,1.35)
				if (hit_player_obj.state == PS_HITSTUN) or (hit_player_obj.state == PS_HITSTUN_LAND) {
					//pseudo-command grab code to make sure that even when clyde goes fast, the opponent doesn't fall out
					hit_player_obj.x = lerp(hit_player_obj.x,my_hitboxID.x + 15 * my_hitboxID.spr_dir,(1*strong_charge/110))
					hit_player_obj.y = lerp(hit_player_obj.y,my_hitboxID.y + 20,(1*strong_charge/100))
				}
			}
			if my_hitboxID.hbox_num == 2 {
				sound_play(asset_get("sfx_forsburn_reappear_hit"),false,0,0.65,1.65)
				sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.9,1.35)
			}
		}
		break;
		
	case AT_DSTRONG:
		sound_play(asset_get("sfx_forsburn_reappear_hit"),false,0,0.65,0.85)
		sound_play(asset_get("sfx_kragg_rock_pillar"),false,0,0.45,1.85)
		if my_hitboxID.hbox_num == 3 {
			sound_play(asset_get("sfx_blow_heavy2"))
		}
		break;
		
	case AT_USTRONG:
		sound_play(asset_get("sfx_ori_charged_flame_hit"),false,0,0.85,0.85)
		//sound_play(asset_get("sfx_zetter_fireball_fire"),false,0,0.35,1.65)
		break;
	
	//other normals gamefeel code
	case AT_FTILT:
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		break;
	case AT_UTILT:
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		break;
	case AT_DTILT:
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		break;
	case AT_BAIR:
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.55,1.65)
		break;
	case AT_EXTRA_2: //hatless uair
		if my_hitboxID.hbox_num != 4 {
			sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
			sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		}
		break;
	case AT_DSPECIAL_2:
		if my_hitboxID.hbox_num == 3
		{
			my_hitboxID.otto_hitpause = 1;
			sound_play(asset_get("sfx_absa_kickhit"));
			sound_play(asset_get("sfx_absa_concentrate"));
		}
		break;
	
	
}

//Grabs player
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && !hit_player_obj.clone) {
    hatted_id = hit_player_obj.id;
    hatted_id.invincible = true;
    hatted_id.invince_time = 40;
}
	case AT_UAIR: 
	sound_play(asset_get("sfx_bite"))
	break;
}
