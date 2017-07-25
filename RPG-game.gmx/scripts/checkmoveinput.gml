///checkmoveinpt();

with(other){
    if(obj_game.canMove){
        if(input.up){
            obj_player.state = "up";
        }else if(input.right){
            obj_player.state = "right";
        }else if(input.down){
            obj_player.state = "down";
        }else if(input.left){
            obj_player.state = "left";
        }else {
             obj_player.state = "idle";
        }
    }else {
             obj_player.state = "idle";
    }
}
