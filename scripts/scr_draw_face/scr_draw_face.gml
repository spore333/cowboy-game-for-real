function scr_draw_face(speaker, iter){
	//speaker is who is talking and iter is how many shadow effects to do
	sprite = asset_get_index("spr_"+speaker+"_face")//gets the sprite from the name
	if(timer = 0){
		subImg++ //everytime a letter writes, go to the next sub image.
	}
	
	if(subImg>=sprite_get_number(sprite) or n=string_length(text[index].text)-1){
		subImg = 0 //wrap subimage or if it is on the last character set it to 0
	}
	
	//for(var i = 0; i<iter; i++){
	//	var val = (i/(iter-1))*255
	//	var color = make_color_rgb(val,val,val) //fade from black to full color
	//	draw_sprite_ext(sprite,subImg,x+(i*5),y,1.5,1.5,0,color,(val/255)+0.1)//draw the sprite
	//}
	//might try this again later
	
	draw_sprite_ext(sprite,subImg,x,y,1.5,1.5,0,c_white,1);
}