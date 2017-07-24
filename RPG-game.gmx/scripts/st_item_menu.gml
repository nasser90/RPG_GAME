if(state_time==0){
    canMove = false;
    with(instance_create(view_xview[0],view_yview[0],obj_massagebox)){
        xscale = 15;
        yscale = 15;
    }
}

if(input.B && state_time >10){
    canMove = true;
     with(obj_massagebox){
        instance_destroy();
    }
    state_switch(st_ingame);
}
