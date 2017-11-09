///fight_int( num_of_stats , num_of_enemys );

var nos = argument[0];
var noe = argument[1];

if(state_pre != st_item_menu){
    for(var i =0;i<nos;i++){
        player.stat[2,i] = 0;
        for(var j =0;j<noe;j++){
            enemy[j].stat[2,i] = 0;
            enemy_attacked[j] = false;
        }
    }
    player_attacked = false;
}
intext =-1;

for(var i =0;i<10;i++){
    if(text[i] != -1)
        with(text[i]){
            instance_destroy();
        }
    text[i] =-1;
}

attack_index =-1;
enemy_selected = -1;

fight_timer = 0;
