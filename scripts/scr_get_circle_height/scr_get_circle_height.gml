// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_circle_height(xpos,radius){
	try{
		ret = radius*sin(arccos(xpos/radius))
	}catch(_exception){
		ret = 0
	}
	return ret
}