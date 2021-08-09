if(timer<text[index].spd){
	//count up
	timer++
}else{
	//increase index and reset timer
	if(n<string_length(text[index].text)-1){
		n++
	}
	timer = 0
}

scr_question() //question code runs in a script
if(n=string_length(text[index].text)-1 and keyboard_check_pressed(vk_space)){ //on the last character and space is pressed
	n = 0;
	timer = 0;
	index++;
	charSpeed = 1
	skipped = false
	if(index>=array_length(text)){ //if the text is over, destroy textbox
		instance_destroy()
	}else{
		var splitText = text[index]
		chars = scr_split_string(splitText.text) //the string split into characters
	}
}else if(n<string_length(text[index].text)-1 and keyboard_check_pressed(vk_space) and n!=0){
	skipped = true
	skippedAt = n;
	n = string_length(text[index].text)-1 //go to the end of text
	
	var width = 0 //track text width
	var drawWidth = sprite_width-(inset*2) //how far across text COULD go
	
	for(var k = 0; k<skippedAt; k++){ //get original length
		width+=clamp(string_width(chars[k]),7,12)
	}
	
	for(var j = skippedAt; j<n; j++){ //line break check
		width+=string_width(clamp(string_width(chars[j]),7,12))
		if(width>drawWidth){
			for(var l = j; l>0; l--){ //loops backwards through the array
				if(chars[l] = " "){ //if the character is a space
					chars[l] = "\n" //replace it with a new line character
					break; //end the loop if it successfully does it
				}
			}
		width = 0;
		}
	}
}

t++

if(keyboard_check_pressed(vk_left)){
	selected--
}
if(keyboard_check_pressed(vk_right)){
	selected++
}
