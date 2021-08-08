function scr_question(){
	if(n=string_length(text[index].text)-1 and text[index].isQuestion){
		if(keyboard_check_pressed(vk_right)or(keyboard_check_pressed(ord("D")))){
			selected++
		}
		if(keyboard_check_pressed(vk_left)or(keyboard_check_pressed(ord("A")))){
			selected--
		}
		var numOptions = array_length(text[index].options)
		if(selected<0){
			selected = numOptions-1
		}else if(selected>=numOptions){
			selected = 0
		}
	
		if(keyboard_check_pressed(vk_space)){
			scr_auto_textbox(text[index].responce[selected])
		}
	}
}