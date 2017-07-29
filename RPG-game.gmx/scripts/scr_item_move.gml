///scr_item_move(from_index,to_index)

var from = obj_game.inventory[argument[0]];
var to = obj_game.inventory[argument[1]];

obj_game.inventory[argument[0]] = to;
obj_game.inventory[argument[1]] = from;

with(obj_item_menu) instance_destroy();
item_cre = false;
