inset = 12 //how far text is inset in the box

index = 0 //which string it is on
n = 0 //how many characters through current text it is
timer = 0 //counts up and times the text appearing
skipped = false //checks if text has been skipped
skippedAt = 0 //when it was skipped
selected = 0//what option is selected (questions only)

t = 0 //timer for text effects

subImg = 0 //sub image for the face box
chars[0] = ""
scr_textbox_position()

// player cannot talk during dialogue
global.can_move = false 
