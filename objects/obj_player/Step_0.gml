movespeed = keyboard_check(vk_lshift) ? 3 : 1.5
movespeed = instance_exists(obj_textbox) ? 0 : movespeed
scr_player_movement(movespeed)
depth = -y
time+=0.1