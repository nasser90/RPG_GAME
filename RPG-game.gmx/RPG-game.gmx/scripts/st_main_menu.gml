if(state_time == 0){
    selected = 0;
    timer = 0;
    obj_btn_start.image_index = 1;
}

if(selected == 0 && input.down && timer <= 0){
    selected =1;
    obj_btn_start.image_index = 0;
    obj_btn_quit.image_index = 3;
    timer = 10;
}
if(selected == 1 && input.up && timer <= 0){
    selected =0;
    obj_btn_start.image_index = 1;
    obj_btn_quit.image_index = 2;
    timer = 10;
}

if(input.A && state_time > 10){
    if(selected == 0){
        room_goto(rm_test);
        state_switch(st_ingame);
    }else if (selected == 1){
        game_end();
    }
}

timer--;
