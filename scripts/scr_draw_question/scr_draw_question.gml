function scr_draw_question(){

if(n=string_length(text[index].text)-1 and text[index].isQuestion){
	var breaks = 0 
	for(var i = 0; i<array_length(chars); i++){
		if(chars[i] = "\n"){
			breaks++
		}
	} //number of line breaks
	
	var options = array_length(text[index].options)
	var spacing = (sprite_width)/5
	//show_debug_message(breaks)
	var width = spacing-(spacing/4)
	var rad = sprite_width/3
	var ypos = (12*(breaks+1))+6+inset+rad
	var switchspeed = 3
	
	
	if(selected>sel){
		if(qxpos>-spacing){
			qxpos-=switchspeed
		}else{
			sel+=1
			qxpos = 0
			audio_play_sound(snd_click,1,false)
		}
	}else if(selected<sel){
		if(qxpos<spacing){
			qxpos+=switchspeed
		}else{
			sel-=1
			qxpos = 0
			audio_play_sound(snd_click,1,false)
		}
	}else{
		qxpos = 0
	}
	
	//draw selected option
	draw_set_font(fnt_question) //set font
	draw_set_color(c_black) //set color
	draw_text_ext(x+(sprite_width/2)+qxpos,y+ypos-scr_get_circle_height(0+qxpos,rad),text[index].options[sel mod options],8,width)
	
	//draw left option
	draw_set_font(fnt_question) //set font
	draw_set_color(c_gray) //set color
	var left_sel = sel-1
	draw_text_ext(x+(sprite_width/2)-spacing+qxpos,y+ypos-scr_get_circle_height(0-spacing+qxpos,rad),text[index].options[left_sel mod options],8,width)

	//draw lefter option
	draw_set_font(fnt_question) //set font
	draw_set_color(c_gray) //set color
	var left_sel = left_sel-1
	draw_text_ext(x+(sprite_width/2)-(spacing*2)+qxpos,y+ypos-scr_get_circle_height(0-(spacing*2)+qxpos,rad),text[index].options[left_sel mod options],8,width)

	//draw right option
	draw_set_font(fnt_question) //set font
	draw_set_color(c_gray) //set color
	var right_sel = sel+1
	var rtxt = text[index].options[right_sel mod options]
	draw_text_ext(x+(sprite_width/2)+spacing+qxpos,y+ypos-scr_get_circle_height(0+spacing+qxpos,rad),rtxt,8,width)
	
	//draw righter option
	draw_set_font(fnt_question) //set font
	draw_set_color(c_gray) //set color
	var right_sel = right_sel+1
	var rtxt = text[index].options[right_sel mod options]
	draw_text_ext(x+(sprite_width/2)+(spacing*2)+qxpos,y+ypos-scr_get_circle_height(0+(spacing*2)+qxpos,rad),rtxt,8,width)
	
	
	
}

}