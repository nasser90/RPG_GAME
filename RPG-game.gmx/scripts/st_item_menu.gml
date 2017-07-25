if(state_time==0){
    canMove = false;
    instance_create(0,0,obj_menu);
}

if(input.B && state_time >10){
    canMove = true;
    with(obj_menu) instance_destroy();
    state_switch(st_ingame);
}
