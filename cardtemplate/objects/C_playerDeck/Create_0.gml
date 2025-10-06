playerDeck = []
playerHand = []
playerVisualHand = []
playerDiscardPile = []

playfield_w = 910
playfield_xpos = []


// Create the player deck from the loaded deck

for (var i = 0; i < array_length(C_deckLoader.loadedDeck); i++){
    array_push(playerDeck, C_deckLoader.loadedDeck[i])
}

// shuffle deck
shuffle_deck(playerDeck)

// draw initial cards
draw_to_hand(playerDeck,playerHand)

// redraws physical cards to screen
event_user(3)



// Debug stuff
show_debug_message(string(array_length(playerDeck)) + " cards in deck.")
show_debug_message(string(array_length(playerHand)) + " cards in hand.")
show_debug_message(string(array_length(playerDiscardPile)) + " cards in discard pile.")

for (var i=0; i < 5; i++){
    show_debug_message("Card "+ string([i]) +" " +string(playerDeck[i]))
}