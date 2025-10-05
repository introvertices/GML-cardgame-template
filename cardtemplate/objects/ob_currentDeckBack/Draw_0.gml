// card shadow
draw_sprite_ext(sprite_index,0,x,y+8,1,1,0,c_black,0.3)

// card back
draw_self()

draw_set_font(f_text)
draw_set_color(c_white)
draw_set_halign(fa_center)

// deck name
draw_text_ext(x + pad_x,y+150,string(C_deckLoader.loadedDeckName),20,125)


// num of cards total
draw_text_ext(x + pad_x,y+180,string(array_length(C_deckLoader.loadedDeck)) + " cards",20,125)
draw_set_halign(fa_left)

// deck info
if (object_exists(C_playerDeck)){
    // cards left
    draw_text(x + pad_x2, y,"Left: " +string(array_length(C_playerDeck.playerDeck)))
    }
else{draw_text(x + pad_x2, y, "Thinking...")}
    
// hand size
draw_text(x + pad_x2, y + 30,"Max. hand: " +string(C_playerVars.handSize))

// discard pile
draw_text(x + pad_x2, y + 60,"Discarded: " +string(array_length(C_playerDeck.playerDiscardPile)))

// score
draw_text(x + pad_x2, y + 90,"Score: " +string(C_playerVars.currentScore))


