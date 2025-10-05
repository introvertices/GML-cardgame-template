
// Shuffles the deck array in place
function shuffle_deck(deckName){
    array_shuffle_ext(deckName)
    show_debug_message("Deck shuffled")

}

// Can be used to draw a single card, or in combo with draw to hand
function draw_card(deckName){
    _card = array_pop(deckName)
    return _card
}

// Draws a hand of cards up to the player's hand size, as long as there are cards in the deck
function draw_to_hand(deckName,currentHand){
    _handSize = C_playerVars.handSize
    
    
    // Player is allowed to draw cards
    if (ob_button_parent.allowDraw) && (array_length(currentHand) < _handSize){
    
        // check how may cards are left in the deck
        // more cards left in the deck than the player's hand size
        if (array_length(deckName) >= _handSize){
            while(array_length(currentHand) < _handSize){
                array_push(currentHand, draw_card(deckName))
            }
            show_debug_message("Drew up to " + string(_handSize))
        }
        
        // fewer cards in deck than hand size
        else if(array_length(deckName) < _handSize) && (array_length(deckName) > 0){
            while (array_length(deckName) > 0){
                array_push(currentHand, draw_card(deckName))
            }
            show_debug_message("Drew final hand")

        }
        
        // no cards in deck
        else{
            ob_button_parent.allowDraw = false
            show_debug_message("No cards left to draw")
        }
    
        }
    else{show_debug_message("Unable to draw")}
    }
    

// Discards the player's whole hand, and removes the cards from the deck and into the discard pile
function discard_hand(currentHand,discardPile){
    
    // check current hand size to see if anything can be discarded
    if (array_length(currentHand) > 0){
        for (var i= 0; i < array_length(currentHand); i++){
            array_push(discardPile, currentHand[i])
        }
        
        //remove cards fully from hand
        while (array_length(currentHand) > 0){
            array_pop(currentHand)
            // prevent button actions
            ob_button_parent.allowDraw = false
            ob_button_parent.allowPlay = false
            ob_button_parent.allowDiscard = false
        }
        
    }
    

}


