
obj_player.phy_rotation = 0;
obj_player.phy_fixed_rotation = true;
if(input.A)
{
    obj_player.phy_position_y += -obj_player.jmpspd;
}
if(obj_player.hp <= 0){
    with(obj_game){
        state_switch(st_gameover);
    }
 room_goto(rm_gameover);
}

if(room == 3 and !instance_exists(obj_enemy_base)){ // rm_villagefight = 3

    obj_game.mission[0]=2;
    state_switch(st_ingame);
    room_goto(rm_test);
}

// Attack

if(input.Z){
    if(obj_player.sprite_index == spr_player_right){
        instance_create(obj_player.x+20,obj_player.y,obj_damage);
    }
    else if (obj_player.sprite_index == spr_player_left){
        instance_create(obj_player.x-20,obj_player.y,obj_damage);
    }
}

