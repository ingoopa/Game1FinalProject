/// @description health arrays and var defines
maxHearts = 5;
hp_current = 100;
hp_max = hp_current;
/*hp_temp = hp_current; //gradually reduce over tiem until it equal hp_current
shake = 0; //This is how much the heart will be moving up/down by*/


enum e_hearts{
    index,
    full_value,
    half_value,
}

for (var hearts = 0; hearts < maxHearts; hearts ++){
    a_hearts[hearts, e_hearts.index] = 2;
    a_hearts[hearts, e_hearts.full_value] = hp_max - (hearts * (hp_max / maxHearts));
    a_hearts[hearts, e_hearts.half_value] = a_hearts[hearts, e_hearts.full_value] - (hp_max / 10);
}