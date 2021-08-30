var should_destroy;
should_destroy = false;

//image_index += anim_speeds[player_id.exec_item_state];

executeItemAction(player_id.exec_item_state,player_id.exec_item);
//KEEP THIS AT THE BOTTOM OF THE FILE
if should_destroy instance_destroy();
#define executeItemAction(_state, _item)
var anim_speeds = [0.2, 0.3];

//DO SOMETHING BASED ON ITEM ---- EDIT THESE CASES!
switch (_state)
{
    case 0:
        switch (_item)
        {
        	//ROGER (my beloved)
        	case 0:
        	switch(roger_state)
        	{
                case 0: //spawn
                sprite_index = sprite_get("roger");
                if (anim_time == 1)
                vsp = -7 //intial vsp when spawning
                if (anim_time mod 6 == 0)
                {
                    image_index++ 
                }
                if (image_index > 5) 
                {
                    roger_state = 1; 
                    anim_time = 0;
                    //once spawn animation finishes, state is changed to move state
                }
                break;
                case 1: //move
                //timer++;
                if (anim_time mod 5 == 0)
                {
                    image_index++
                    if (image_index > 14)
                    {
                        image_index = 6;
                    }
                }
                with (oPlayer)
                {
                    if (other.player_id == id and collision_circle(other.x, other.y, 60, asset_get("oPlayer"), false, true)) 
                    {
                        other.roger_state = 2;
                        other.anim_time = 0;
                        other.image_index = 15;
                        //if enemy player is at a certain range near roger, state whiches to attack state
                    }
                }
                /*if (timer > 300)
                {
                    roger_state = 9;
                    anim_time = 0;
                    //if lifetime runs out, state switches to death state.
                }*/ //Commented out code that kills Roger when inactive
                break;
                case 2: //attack
                if (anim_time mod 4 == 0)
                {
                    image_index++
                    if (image_index > 33)
                    {
                        roger_state = 9;
                        anim_time = 0;
                        //once attack is finished, state switches to death state
                    }
                    if (image_index == 22)
                    {
                        hitbox = create_hitbox(AT_DSPECIAL_2, 1, x, y - 10);
                    }
                }
                if (image_index == 16 and anim_time mod 4 == 3)
                {
                    sound_play(sound_get("roger_attack"));
                }
                break;
                case 9: //death
                if (anim_time == 1)
                {
                    sound_play(sound_get("roger_death"));
                }
                if (image_index < 34)
                {
                    image_index = 34;
                }
                if (anim_time mod 6 == 0)
                {
                    image_index++
                    if (image_index > 40)
                    {
                        instance_destroy();
                        exit;
                    }
                }
        	}
        	vsp *= 0.93 //friction
        	anim_time++;
        	break;
        	
        	//FREEZY BALL
        	case 2:
        	
        	break;
        	
        	//SPIKE
        	case 3:

        	break;
        	//N/A BEAM
        	case 8:
        	
        	break;
        }    
    case 1:
        switch (_item)
        {
        	//ROGER (my beloved)
        	case 0:
        	
        	break;
        	
        	//FREEZY BALL
        	case 2:
        	
        	break;
        	
        	//SPIKE
        	case 3:
        	
        	break;
        	
        	//N/A BEAM
        	case 8:
        	
        	break;
        }
}

//image_index += anim_speeds[_state]