///fight_choose_attack();

if((intext == 1) && (fight_option == "Attack") && (attack_index != -1)){ // choose attack or item
    for(var i=0;i<2;i++){
        if(attack_index == attack[1,i]){
            attack_index = i;
            selected =0;
        }
    }
}

if(attack_index != -1){
    if(!attack[3,attack_index]){
        draw_set_colour(c_red);
        var i = selected;
        draw_arrow(enemy[i].x,enemy[i].y-64,enemy[i].x,enemy[i].y,15);
        if((input.A) && (fight_timer ==0)){
        enemy_selected = selected;
        fight_timer = 30;
        }
    }else{
        enemy_selected = 0;
    }
}


