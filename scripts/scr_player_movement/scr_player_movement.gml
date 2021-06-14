function scr_player_movement(movespeed){
up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
move = max(up, down, left, right)

hsp=(movespeed*right)-(movespeed*left)
vsp=(movespeed*down)-(movespeed*up)
spd = sqrt(sqr(hsp)+sqr(vsp))

if(spd>movespeed){
	hsp = sqrt(abs(hsp))*sign(hsp)
	vsp = sqrt(abs(vsp))*sign(vsp)
}

x+=hsp
y+=vsp

image_speed = move*(movespeed/2)
image_speed = image_speed>1 ? 1 : image_speed
image_index = move ? image_index:0


//visuals
if(!instance_exists(obj_textbox)){
	if(up){
		sprite_index = spr_player_u
	}
	if(down){
		sprite_index = spr_player_d
	}
	if(left){
		sprite_index = spr_player_l
	}
	if(right){
		sprite_index = spr_player_r
	}
}
}