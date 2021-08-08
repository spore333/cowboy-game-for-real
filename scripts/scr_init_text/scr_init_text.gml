//creates an array of obj_text object from the array of strings
function scr_init_text(txt, spkr){
	var textArray
	for(var i = 0; i < array_length(txt); i++){
		textArray[i] = instance_create_depth(0,0,0,obj_text);
		var sText = txt
		with(textArray[i]){
			text = txt[i]
			spd = 2.5
			effect = txtFX.none
			speaker = spkr
			isQuestion = false
		}
	}
	return textArray
}