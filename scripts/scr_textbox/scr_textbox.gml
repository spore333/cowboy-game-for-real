// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_textbox(txt){
with(instance_create_depth(x,y,-99999,obj_textbox)){
	text = txt
	spd = 3
}
}

function scr_textbox2(txt, d_spd){
with(instance_create_depth(x,y,-99999,obj_textbox)){
	text = txt
	spd = d_spd
}
}