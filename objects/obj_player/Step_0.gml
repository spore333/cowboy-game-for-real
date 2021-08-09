movespeed = keyboard_check(vk_lshift) ? 3 : 1.5
movespeed = instance_exists(obj_textbox) ? 0 : movespeed
script_execute(state,movespeed)
depth = -y
time+=0.1

if(mouse_check_button_pressed(mb_left) and global.can_move){
	state = scr_player_shoot
}