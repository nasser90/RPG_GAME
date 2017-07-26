if(state_time==0){
    canMove = false;
    instance_create(0,0,obj_menu);
    draw_set_alpha(0.75);
}

with(obj_menu){
    alpha = min(alpha+0.01,1);
draw_set_alpha(alpha);
}

if(input.B && state_time >10 && draw_get_alpha() == 1){
    canMove = true;
    with(obj_menu) instance_destroy();
    state_switch(st_ingame);
}

draw_set_alpha(1);
