function scr_draw_question(){

if(n=string_length(text[index].text)-1 and text[index].isQuestion){
	var breaks = 0 
	for(var i = 0; i<array_length(chars); i++){
		if(chars[i] = "\n"){
			breaks++
		}
	} //number of line breaks
	
	var options = array_length(text[index].options)
	var spacing = (sprite_width)/(options+1)
	show_debug_message(breaks)
	var ypos = (12*(breaks+1))+6+inset
	var width = spacing-(spacing/4)
	
	for(var i = 0; i<options; i++){
		var xpos = (spacing*(i+1))-min(width, string_length(text[index].options[i]))/2//(string_width(text[index].options[i])/2)
		draw_set_font(fnt_question) //set font
		draw_set_color(c_black) //set color
		draw_text_ext(x+xpos,y+ypos,text[index].options[i],8,width)
		
		if(selected = i){
			draw_set_color(c_white)
			draw_sprite(spr_selector,0,x+xpos-10,y+ypos+6)
		}
	}
}

}