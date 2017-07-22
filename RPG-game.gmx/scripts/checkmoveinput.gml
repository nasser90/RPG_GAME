if(keyboard_check(vk_up)){
    obj_player.state = "up";
}else if(keyboard_check(vk_right)){
    obj_player.state = "right";
}else if(keyboard_check(vk_down)){
    obj_player.state = "down";
}else if(keyboard_check(vk_left)){
    obj_player.state = "left";
}else {
     obj_player.state = "idle";
}
