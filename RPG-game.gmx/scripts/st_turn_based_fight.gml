///st_turn_based_fight();

// initiate 
if(state_time == 0){
    fight_int(num_of_stats,num_of_enemys);
}
show_debug_message("-----------------------------------");
show_debug_message("selected : " + string(selected));
show_debug_message("fight_timer : " + string(fight_timer));
if(enemy_selected != -1)
    show_debug_message("enemy hp : " + string(enemy[enemy_selected].hp));
show_debug_message("enemy_selected : " + string(enemy_selected));
show_debug_message("attack_index : " + string(attack_index));
show_debug_message("state time : " + string(state_time));


// create text 
if(text[0] == -1){
    scr_text("Attack#Defend#Item#Run",15,player.x - 64*3,player.y - 64,player.x-64,fnt_test,1,"","");
    intext = 0;
}else{
    if((fight_option == "Attack") && (text[1] == -1)){
        scr_text(string(attack[1,player.attack[0]]) + "#" + string(attack[1,player.attack[1]]) + "#" + string(attack[1,player.attack[2]]) + "#" + string(attack[1,player.attack[3]]),15,player.x - 64*4,player.y - 64,player.x-64,fnt_test,1,"","");
        intext = 1;
    }
}

fight_input();
fight_choose_attack();


// attack
if((attack_index != -1) && (enemy_selected != -1)){
    if((!player_attacked) && (fight_timer == 0) ){
        player_attacked = fight_attack( player , attack_index , enemy[enemy_selected]);
        fight_timer = 30;
    }
    for(var i =0;i<num_of_enemys;i++){
        if((!enemy_attacked[i])&&(fight_timer == 0)){
            enemy_attacked[i] = fight_attack( enemy[i] , enemy[i].attack[irandom(3)] , player);
            fight_timer = 30;
        }
    }
    
    //attack_index = -1;
}

// checking and ending the turn
if(fight_timer =0){
    var j=0;
    if(player_attacked){
        for(var i =0;i<num_of_enemys;i++){
            if(enemy_attacked[i]){
                j++;
            }
        }
        if(j==num_of_enemys){
            /*with(text[2]){
                instance_destroy();
            }*/
            for(var i =0;i<num_of_enemys;i++){
                /*with(text[i+3]){
                    instance_destroy();
                }*/
                enemy_attacked[i] = false;
            }
            player_attacked = false;
            attack_index = -1;
            with(text[1]){
                instance_destroy();
            }
            text[1] = -1;
            fight_option = 0;
            intext =0;
            fight_timer =15;
        }
    }
}    

fight_timer = max(fight_timer -1,0);
