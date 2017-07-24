obj_enemy_base.range =2000
obj_enemy_base.phy_rotation = 0;
obj_enemy_base.phy_fixed_rotation = true;
obj_player.phy_rotation = 0;
obj_player.phy_fixed_rotation = true;
if(input.A)
{
    obj_player.phy_position_y+= -obj_player.jmpspd;
}
if(obj_player.hp<=0){
    with(obj_game){
        state_switch(st_gameover);
    }
 room_goto(rm_gameover);
}
