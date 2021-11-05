/// @description drawing the hearts

sprWidth = sprite_get_width(spr_heart);
startX = 110 + (sprWidth * 2.5)
startY = sprite_get_height(spr_heart / 2);

for (var hearts = 0; hearts < maxHearts; hearts ++){
    image = a_hearts[hearts, e_hearts.index];
    xx = startX - (sprWidth * hearts);

    /*//Shake effect !!! Not working 100% Only works for gradual health decrease
    if (hp_temp != hp_current) && (hp_temp > 0){

        shake = irandom_range(-5, 5);

    }else shake = 0;
    */
    draw_sprite(spr_heart, image, xx, startY);
}
