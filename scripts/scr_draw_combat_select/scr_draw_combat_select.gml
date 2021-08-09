function scr_draw_combat_select(){
	var breaks = 0 
	for(var i = 0; i<array_length(chars); i++){
		if(chars[i] = "\n"){
			breaks++
		}
	} //number of line breaks
	
	switch(stage){
		case stages.encounter:
			ops = actions
			break;
		default:
			ops = actions
			break;
	}
	
	var options = array_length(ops)
	var spacing = (sprite_width)/7
	//show_debug_message(breaks)
	var width = spacing-(spacing/4)
	var rad = sprite_width/5
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
	
	//draw sprite
	var subimg = round((qxpos/spacing)*6)
	subimg = (sign(subimg)=1) ? subimg : 6+subimg;
	draw_sprite(spr_revolver_menu,subimg,x+150,y+(sprite_height)+8)
	show_debug_message(round((qxpos/spacing)*6))
	
	//draw selected option
	draw_set_font(fnt_question) //set font
	draw_set_color(c_black) //set color
	draw_text_ext(x+(sprite_width/2)+qxpos,y+ypos-scr_get_circle_height(0+qxpos,rad),ops[sel mod options],8,width)
	
	//draw left option
	draw_set_font(fnt_question) //set font
	draw_set_color(c_black) //set color
	var left_sel = sel-1
	if(left_sel<0){
		left_sel = options-1
	}
	draw_text_ext(x+(sprite_width/2)-spacing+qxpos,y+ypos-scr_get_circle_height(0-spacing+qxpos,rad),ops[(left_sel mod options)],8,width)

	//draw lefter option
	draw_set_font(fnt_question) //set font
	draw_set_color(c_black) //set color
	var left_sel = left_sel-1
	if(left_sel<0){
		left_sel = options-1
	}
	draw_text_ext(x+(sprite_width/2)-(spacing*2)+qxpos,y+ypos-scr_get_circle_height(0-(spacing*2)+qxpos,rad),ops[(left_sel mod options)],8,width)

	//draw right option
	draw_set_font(fnt_question) //set font
	draw_set_color(c_black) //set color
	var right_sel = sel+1
	var rtxt = ops[right_sel mod options]
	draw_text_ext(x+(sprite_width/2)+spacing+qxpos,y+ypos-scr_get_circle_height(0+spacing+qxpos,rad),rtxt,8,width)
	
	//draw righter option
	draw_set_font(fnt_question) //set font
	draw_set_color(c_black) //set color
	var right_sel = right_sel+1
	var rtxt = ops[right_sel mod options]
	draw_text_ext(x+(sprite_width/2)+(spacing*2)+qxpos,y+ypos-scr_get_circle_height(0+(spacing*2)+qxpos,rad),rtxt,8,width)
	
	

}