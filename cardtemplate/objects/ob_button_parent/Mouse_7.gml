image_index = 0

// Press behaviour here
switch (btn_id){
    case 0: {
        //play
        if (allowPlay){
            
        }
    } 
        break;
    
    case 1: {
        // draw
        if (allowDraw){
            with (C_playerDeck){event_user(1)}
        }
    } 
        break;
    
    case 2: {
        // discard
        if (allowDiscard){
            with (C_playerDeck){event_user(2)}
        }
    } 
        break;
}