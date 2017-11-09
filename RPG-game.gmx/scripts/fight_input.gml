///fight_input();

if( intext == 0 && (fight_option == 0) && input.A && fight_timer ==0){
    switch(selected){
        case 0 :{
            fight_option = "Attack"; break;
        }
        case 1 :{
            fight_option = "Defend"; break;
        }
        case 2 :{
            fight_option = "Item"; break;
        }
        case 3 :{
            fight_option = "Run"; break;
        }
    }
    fight_timer = 30;
}
if( intext == 1 && (fight_option == "Attack") && input.A && fight_timer ==0){
    switch(selected){
        case 0 :{
            attack_index = attack[1,player.attack[0]]; break;
        }
        case 1 :{
            attack_index = attack[1,player.attack[1]]; break;
        }
        case 2 :{
            attack_index = attack[1,player.attack[2]]; break;
        }
        case 3 :{
            attack_index = attack[1,player.attack[3]]; break;
        }
    }
    fight_timer = 30;
}
if(attack_index == -1){
    if(input.down){
        selected++;
        if(selected > 3) selected = 0;
    }
    if(input.up){
        selected--;
        if(selected < 0) selected =3;
    }
}
else if(!attack[3,attack_index]){
    if(input.right){
        selected++;
        if(selected > num_of_enemys -1) selected = 0;
    }
    if(input.left){
        selected--;
        if(selected < 0) selected =num_of_enemys -1;
    }
}

