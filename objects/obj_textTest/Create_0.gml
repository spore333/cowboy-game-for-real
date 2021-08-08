image_speed = 0
//txt[0] = "Here is a cool text I am saying stuff hello cool nice!!! I need to make this text even longer to see it go onto another level!!"
//txt[1] = "wow look at me now my text is waving and moving in a sine wave wooooooooo"
//txt[2] = "Now just to text this is going not have any effect at all! None whatsoever"
//txt[3] = "NOW THIS TEXT is shaking LIKE I AM angry or something like that"

////creates the array of text objects (obj_text)
//text = scr_init_text(txt,"mp");

//text[1].effect = txtFX.wave
//text[3].effect = txtFX.shake

txt[0] = "You ain't look like you belong in this'n parts."
txt[1] = "Better giddy up outta here less'n your wantin' a mouth fulla lead."

text = scr_init_text(txt,"mp");

text[1].isQuestion = true
option[0] = "..."
option[1] = "I'm from nearby."
option[2] = "Lead is tasty. Mmm.."
text[1].options = option

rsp0[0] = "......................................"
rsp0[1] = "Two can play at that game. But I always win."
rsp0 = scr_init_text(rsp0,"mp")
rsp0[0].effect = txtFX.shake
rsp0[1].effect = txtFX.shake
text[1].responce[0] = rsp0

rsp1[0] = "Oh, I apologize for my tone. I'm just havijng a really bad day ok. Get off it."
rsp1 = scr_init_text(rsp1,"mp")
rsp1[0].effect = txtFX.wave
text[1].responce[1] = rsp1


rsp2[0] = "What are you ten years old? Get out of my town and bring your silly behavior with you."
rsp2 = scr_init_text(rsp2,"mp")
rsp2[0].effect = txtFX.wave
text[1].responce[2] = rsp2