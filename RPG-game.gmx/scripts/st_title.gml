
if(state_time == 0){
    Aclicked = false; // to check if player clicked start
}

if(input.A && state_time > 30){
    Aclicked = true;
}

if( Aclicked){
    draw_set_alpha(draw_get_alpha() - 0.01);
}

if(draw_get_alpha() ==0){
    draw_set_alpha(1);
    room_goto(rm_main_menu);
    state_switch(st_main_menu);
}

