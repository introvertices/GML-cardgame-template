image_speed = 0
depth = -4000

// Toggles
allowDraw = true
allowDiscard = true
allowPlay = false

// Set sprite
switch (btn_id){
    case 0: {sprite_index = sp_button_play} //play
        break;
    case 1: {sprite_index = sp_button_draw} // draw
        break;
    case 2: {sprite_index = sp_btn_discard} // discard
        break;
}