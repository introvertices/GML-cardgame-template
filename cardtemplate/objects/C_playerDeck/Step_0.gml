// toggle button states

// disallow play if no cards selected


// disallow draw if deck empty or if hand full
if (array_length(playerDeck) <= 0) || (array_length(playerHand) >= C_playerVars.handSize){ob_button_parent.allowDraw = false}
    else{ob_button_parent.allowDraw = true}

// disallow discard if hand empty
if (array_length(playerHand) <= 0){ob_button_parent.allowDiscard = false}
    else{ob_button_parent.allowDiscard = true}
        
