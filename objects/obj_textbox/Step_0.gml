depth = -99999999
if(timer = spd){
	timer = 0
	if(len < string_length(text[i])){
		len++
		d_text = string_copy(text[i],0,len)
	}
}

if(keyboard_check_pressed(vk_enter)){
	if(len = string_length(text[i])){
		if(i+1>=array_length_1d(text)){
			instance_destroy()
		}else{
			timer = 0
			d_text = ""
			i++
		}
	}else{
		len = string_length(text[i])
		d_text = string_copy(text[i],0,len)
	}
}
timer++