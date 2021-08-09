// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bandit(){
	dir = point_direction(x,y,obj_player.x,obj_player.y)
	dir4 = round(dir/90)
	switch(dir4){
		case 1:
		sprite_index = spr_bandit_u
		break;
		case 0:
		sprite_index = spr_bandit_r
		break;
		case 3:
		sprite_index = spr_bandit_d
		break;
		case 2:
		sprite_index = spr_bandit_l
		break;
		default:
		sprite_index = spr_bandit_r
		break;
	}
	image_speed = 1*abs(sign(speed))
	if(!place_meeting(x+hspeed+lengthdir_x(1,dir),y+vspeed+lengthdir_y(1,dir),obj_solid)){
		speed = 1
	}else{
		speed = 0
		image_index = 0
	}
	if(!global.can_move){
		speed = 0
		image_index = 0
	}
	direction = dir
	depth = -y
	if(place_meeting(x,y,obj_bullet)){
		with(instance_nearest(x,y,obj_bullet)){
			instance_destroy()
		}
		hp--
	}
	if(hp = 0){
		instance_create_depth(x,y,depth,obj_bandit_die)
		instance_destroy()
	}
}