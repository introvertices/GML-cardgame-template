//!-- VARS
loadedDeck = [];
loadedDeckName="Standard"


//!-- Load in deck info 
var _grid = load_csv("deck_basic.csv");

var _rows = ds_grid_height(_grid);
var _cols = ds_grid_width(_grid);


// push cards to array
for (var i = 1; i < _rows; i++){
    var _card = {
        id: _grid[# 0, i],
        value: real(_grid[# 1, i]),
        suit: _grid[# 2, i],
    };
    
    array_push(loadedDeck, _card);
};

// clean up
ds_grid_destroy(_grid);

show_debug_message("Loaded " + string(array_length(loadedDeck)) + " cards!");

//-----------------------------------------------------------------


//!-- Create player's version of the deck
instance_create_layer(0,0,"Instances",C_playerDeck)
















