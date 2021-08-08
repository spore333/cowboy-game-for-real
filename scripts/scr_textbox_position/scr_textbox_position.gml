// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_textbox_position(){
	var v_x = camera_get_view_x(view_camera[0])
	var v_y = camera_get_view_y(view_camera[0])
	var v_w = camera_get_view_width(view_camera[0])
	var v_h = camera_get_view_height(view_camera[0])
	
	x = v_x+((v_w-sprite_width)/2)
	y = (v_y+v_h)-(inset+sprite_height)
	
}