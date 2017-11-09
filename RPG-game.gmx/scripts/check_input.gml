///check_input()

if((obj_game.state == st_ingame) || (obj_game.state == st_fight)){
    up = (keyboard_check(ord('W')) || keyboard_check(vk_up));
    right = (keyboard_check(ord('D')) || keyboard_check(vk_right));
    down = (keyboard_check(ord('S')) || keyboard_check(vk_down));
    left = (keyboard_check(ord('A')) || keyboard_check(vk_left));
}
if((obj_game.state == st_item_menu) || (obj_game.state == st_turn_based_fight)){
    up = (keyboard_check_pressed(ord('W')) || keyboard_check_pressed(vk_up));
    right = (keyboard_check_pressed(ord('D')) || keyboard_check_pressed(vk_right));
    down = (keyboard_check_pressed(ord('S')) || keyboard_check_pressed(vk_down));
    left = (keyboard_check_pressed(ord('A')) || keyboard_check_pressed(vk_left));
}
A = (keyboard_check_pressed(ord('J')) || keyboard_check_pressed(vk_space));
B = keyboard_check_pressed(ord('K'));
Z = keyboard_check_pressed(ord('Z'));

start = (keyboard_check_pressed(ord('U')) || keyboard_check_pressed(vk_escape));
select = (keyboard_check_pressed(ord('I')) || keyboard_check_pressed(vk_enter));
