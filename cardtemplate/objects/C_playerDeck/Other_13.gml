// spawn physcial cards and align them
card_spacing = playfield_w / array_length(playerHand)
card_padding = card_spacing / 2

// create card objects
for (var i=0; i < array_length(playerHand); i++){
    _spawnCard = instance_create_layer(525,140,"Instances",ob_card,{
        image_index: playerHand[i].id,
        target_x:  (card_spacing / 2) + (i * card_spacing),
        alarm_delay: 10 + (i * 30)})
    
    array_push(playerVisualHand,_spawnCard)
}