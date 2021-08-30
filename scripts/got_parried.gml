if (my_hitboxID.attack == AT_BAIR and my_hitboxID.hbox_num == 4)
{
    for (var i = 0; i < array_length_1d(bair_stars); i++)
    {
        if instance_exists(bair_stars[i])
        {
            with (bair_stars[i])
            {
                hitbox_timer = 0;
                hsp *= (self == other.my_hitboxID) ? 1.25 : -1.25;
                vsp *= (self == other.my_hitboxID) ? 1.25 : -1.25;
                player = other.hit_player;
                was_parried = true;
                kb_angle = 140;
            }
            bair_stars[i] = noone
        }
    }
}