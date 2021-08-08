// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_split_string(txt){
	var chars;
	for(var i = 0; i<string_length(txt); i++){
		chars[i] = string_char_at(txt,i+1)
	}
	return chars
}