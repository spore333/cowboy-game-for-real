// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_textbox(txt){
	var xDiff = sign(obj_player.x-x)
	var yDiff = sign(obj_player.y-y)
	var p_collision = place_meeting(x+xDiff,y+yDiff,obj_player) //check is player is right there
	if(!instance_exists(obj_textbox) and p_collision and keyboard_check_pressed(vk_space)){
		with(instance_create_depth(0,0,-99999,obj_textbox)){
			text = txt
		}
	}
}