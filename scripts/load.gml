sprite_change_offset("idle", 45, 78);
sprite_change_offset("crouch", 32, 110);
sprite_change_offset("walk", 34, 88);
sprite_change_offset("walkturn", 18, 74);
sprite_change_offset("dash", 66, 94);
sprite_change_offset("dashstart", 42, 76);
sprite_change_offset("dashstop", 44, 78);
sprite_change_offset("dashturn", 40, 76);

sprite_change_offset("jumpstart", 44,52);
sprite_change_offset("jump", 64, 88);
sprite_change_offset("doublejump", 42, 106);
sprite_change_offset("walljump", 32, 62);
sprite_change_offset("pratfall", 32, 62);
sprite_change_offset("land", 44, 52);
sprite_change_offset("landinglag", 44, 52);
sprite_change_offset("waveland", 44, 52);

sprite_change_offset("parry", 140, 190);
sprite_change_offset("roll_forward", 42, 72);
sprite_change_offset("roll_backward", 42, 72);
sprite_change_offset("airdodge", 30, 78);
sprite_change_offset("tech", 32, 62);

sprite_change_offset("jab", 58, 94);
sprite_change_offset("dattack", 64, 88);
sprite_change_offset("ftilt", 66, 94);
sprite_change_offset("dtilt", 26,62);
sprite_change_offset("utilt", 90, 126);
sprite_change_offset("nair", 76, 94);
sprite_change_offset("fair", 38, 92);
sprite_change_offset("fair2", 36, 88);
sprite_change_offset("bair", 110, 106);
sprite_change_offset("uair", 64, 182);
sprite_change_offset("uair2", 72, 94);
sprite_change_offset("dair", 44, 84);
sprite_change_offset("fstrong", 48, 126);
sprite_change_offset("ustrong", 104, 158);
sprite_change_offset("dstrong", 102, 176);
sprite_change_offset("nspecial", 64, 94);
sprite_change_offset("fspecial", 42,80);
sprite_change_offset("uspecial", 64, 94);
sprite_change_offset("dspecial", 62, 126);
sprite_change_offset("taunt", 72, 80);
sprite_change_offset("taunt_roll", 38, 110);

sprite_change_offset("hud", 26, 22);
sprite_change_offset("hudslots", 26, 16);
sprite_change_offset("hudslots2", 26, 16);

sprite_change_offset("uphurt", 30, 84);
sprite_change_offset("groundhurt", 38, 78);
sprite_change_offset("hurt", 42, 88);
sprite_change_offset("bighurt", 46, 86);
sprite_change_offset("bouncehurt", 54, 50);
sprite_change_offset("downhurt", 32, 50);
sprite_change_offset("plat", 66,66);
sprite_change_offset("plushies", 50 , 56);
sprite_change_offset("nspecial_proj", 64, 94);

sprite_change_offset("fstrongclyde", 60, 55);

sprite_change_offset("fspecial_projectile_start", 32, 30);
sprite_change_offset("fspecial_projectile_end", 18, 28);
sprite_change_offset("fspecial_return", 26, 112);
sprite_change_offset("hat_mask", 11, 26);


//hatless offsets
sprite_change_offset("idle_hatless", 46, 78);
sprite_change_offset("crouch_hatless", 36, 68);
sprite_change_offset("walk_hatless", 34, 80);
sprite_change_offset("walkturn_hatless", 18, 74); //needs sprite
sprite_change_offset("dash_hatless", 50, 70);
sprite_change_offset("dashstart_hatless", 40, 68);
sprite_change_offset("dashstop_hatless", 46, 70);
sprite_change_offset("dashturn_hatless", 36, 66);

sprite_change_offset("jumpstart_hatless", 44,48);
sprite_change_offset("jump_hatless", 64, 90);
sprite_change_offset("doublejump_hatless", 64, 90);
sprite_change_offset("walljump_hatless", 32, 68);
sprite_change_offset("pratfall_hatless", 48, 86);
sprite_change_offset("land_hatless", 40, 70);
sprite_change_offset("landinglag_hatless", 40, 70);
sprite_change_offset("waveland_hatless", 44, 52);

sprite_change_offset("parry_hatless", 32, 68);
sprite_change_offset("roll_forward_hatless", 42, 72); //needs sprite
sprite_change_offset("roll_backward_hatless", 42, 72); //needs sprite
sprite_change_offset("airdodge_hatless", 30, 78);
sprite_change_offset("tech_hatless", 32, 62); //needs both sprites

sprite_change_offset("uphurt_hatless", 30, 76);
sprite_change_offset("hurtground_hatless", 26, 84);
sprite_change_offset("hurt_hatless", 32, 75);
sprite_change_offset("bouncehurt_hatless", 54, 50);
sprite_change_offset("downhurt_hatless", 32, 62);

//hatless attack offsets
sprite_change_offset("jab_hatless", 48, 74);
sprite_change_offset("dattack_hatless", 64, 88);
sprite_change_offset("ftilt_hatless", 72, 94);
sprite_change_offset("dtilt_hatless", 48,62); 
sprite_change_offset("utilt_hatless", 90, 126);
sprite_change_offset("nair_hatless", 76, 94); //needs sprite
sprite_change_offset("fair_hatless", 38, 92); //needs sprite
sprite_change_offset("fair2_hatless", 36, 88); //needs sprite
sprite_change_offset("bair_hatless", 110, 106); //needs sprite
sprite_change_offset("dair_hatless", 44, 84); 
sprite_change_offset("fstrong_hatless", 48, 126); //needs sprite
sprite_change_offset("ustrong_hatless", 104, 158); //needs sprite
sprite_change_offset("dstrong_hatless", 102, 176); //needs sprite
sprite_change_offset("nspecial_hatless", 64, 94); //needs sprite
sprite_change_offset("fspecial_hatless", 42,80);
sprite_change_offset("uspecial_hatless", 64, 94); //needs sprite
sprite_change_offset("dspecial_hatless", 64, 94); //needs sprite
sprite_change_offset("taunt_hatless", 72, 80); //needs sprite

//effects
sprite_change_offset("parry_effect", 21,21);

//article_sprites:
sprite_change_offset("roger", 96, 115);
sprite_change_offset("selfdetonate", 202, 332);
sprite_change_offset("selfdetonate_startup", 202, 332);

var size = ["bot","mid","top"];
for (var i = 0; i < 3; i++)
{
    var name = "bairparticle_"+string(size[i]);
    var w = floor( sprite_get_width(sprite_get(name)) / 2 )
    var h = floor( sprite_get_height(sprite_get(name)) / 2 )
    sprite_change_offset(name, w, h);
}