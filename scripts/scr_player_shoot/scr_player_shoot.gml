// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_shoot(movespeed){
	var dir = point_direction(x,y,mouse_x,mouse_y)
	dir4 = round(dir/90)
	var xoffset = 0
	switch(dir4){
		case 1:
		sprite_index = spr_player_u_shoot
		xoffset = 7
		break;
		case 0:
		sprite_index = spr_player_r_shoot
		xoffset = 14
		break;
		case 3:
		sprite_index = spr_player_d_shoot
		xoffset = -8
		break;
		case 2:
		sprite_index = spr_player_l_shoot
		xoffset = -13
		break;
		default:
		sprite_index = spr_player_r_shoot
		xoffset = 14
		break;
	}
	image_speed = 1
	if(image_index=0){
	with(instance_create_depth(x+xoffset,y-(21),depth,obj_bullet)){
		direction = dir
	}
	}
	if(mouse_check_button_pressed(mb_left)){
		image_index = 0
		with(instance_create_depth(x+xoffset,y-(21),depth,obj_bullet)){
			direction = dir
		}
	}
}