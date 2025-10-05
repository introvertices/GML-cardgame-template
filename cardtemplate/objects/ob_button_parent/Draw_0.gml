if (allowPlay) && (btn_id == 0){
    draw_sprite_ext(sprite_index,image_index,x,y,2,2,0,c_white,1)
}
else if (!allowPlay) && (btn_id == 0){
    draw_sprite_ext(sprite_index,image_index,x,y,2,2,0,c_white,0.5)
}

if (allowDraw) && (btn_id == 1){
    draw_sprite_ext(sprite_index,image_index,x,y,2,2,0,c_white,1)
}
else if (!allowDraw) && (btn_id == 1){
    draw_sprite_ext(sprite_index,image_index,x,y,2,2,0,c_white,0.5)
}

if (allowDiscard) && (btn_id == 2){
    draw_sprite_ext(sprite_index,image_index,x,y,2,2,0,c_white,1)
}
else if (!allowDiscard) && (btn_id == 2){
    draw_sprite_ext(sprite_index,image_index,x,y,2,2,0,c_white,0.5)
}