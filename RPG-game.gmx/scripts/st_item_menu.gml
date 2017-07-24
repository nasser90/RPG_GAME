if(state_time==0){
    with(instance_create(0,0,obj_menu))depth = -10;;
    selected =0;
    canMove = false;
    timer=0;
}

if(input.B && state_time >10){
    canMove = true;
    with(obj_menu) instance_destroy();
    state_switch(st_ingame);
}
if(input.up && timer >=5){
    //if(selected == 1);
}





timer--;
