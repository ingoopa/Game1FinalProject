/// @description reduce health when pressing space

if (enemy_hit) {
	
    damage = 10;

    if (hp_current - damage) >= 0 hp_current -= damage;
    else hp_current = 0;

for (var hearts = 0; hearts < maxHearts; hearts ++){
    if hp_current < a_hearts[hearts, e_hearts.full_value]{
            a_hearts[hearts, e_hearts.index] = 1;
        }
    if hp_current < a_hearts[hearts, e_hearts.half_value]{
            a_hearts[hearts, e_hearts.index] = 0;
        }
    }

	
	enemy_hit = false;
}

/* //only needed when you want gradual health decrease, doesn't work 100%
if (hp_temp > hp_current){

    hp_temp -= 0.90;

    for (var hearts = 0; hearts < maxHearts; hearts ++){
        if hp_temp < a_hearts[hearts, e_hearts.full_value]{
            a_hearts[hearts, e_hearts.index] = 1;
        }
        if hp_temp < a_hearts[hearts, e_hearts.half_value]{
            a_hearts[hearts, e_hearts.index] = 0;
        }
    }
}