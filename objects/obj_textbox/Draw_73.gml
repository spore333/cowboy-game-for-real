draw_self()

var drawX = x+inset
var drawY = y+inset //positions to start drawing the text at

var drawWidth = sprite_width-(inset*2) //how far across text COULD go

var width = 0
var height = 0 //tracks how far across and down the text has gone

draw_set_font(fnt_textbox) //set font
draw_set_color(c_black) //set color
for(var i = 0; i<=n; i++){
	
	var v = 0;//vertical offset
	var h = 0;//horizontal offset
	
	switch(text[index].effect){
		case txtFX.none:
			v = 0;
			h = 0; //no change
			break;
		case txtFX.wave:
			v = sin(i+(t/10)) //use t and its position to move it in a wave
			break;
		case txtFX.shake:
			v = random(1); 
			h = random(1);//just adding random values like a screen shake
			break;
	}
	
	if(i=n and n<string_length(text[index].text)-1){ //if it is the last character
		var vFade = text[index].spd-timer; //make the text slide in from the bottom
	}else{
		vFade = 0
	}
	width+=clamp(string_width(chars[i]),7,12)
	
	draw_text(drawX+width+h,drawY+height+v+vFade,chars[i]); //draw the character
	
	
	if(width>drawWidth){ //if the text is too long
		
		if(!skipped){ //normal operation
			for(var j = n; j>0; j--){ //loops backwards through the array
				if(chars[j] = " "){ //if the character is a space
					chars[j] = "\n" //replace it with a new line character
					break; //end the loop if it successfully does it
				}
			}
		}
		
		
	}
	
	if(chars[i] = "\n"){//if it is the new line character
		//show_debug_message(skipped)
		width = 0;
		height+=12; //go to the next line
	}
}

//i'm drawing the face in a script so as not to complicate things
scr_draw_face(text[index].speaker, 3);
//same goes for the question thing
scr_draw_question()