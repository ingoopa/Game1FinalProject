 /// @description 
 
 isShowingMenu = false;
 
 #macro INVENTORY_SLOTS 15
 rowLength = 6
 inventory = array_create(INVENTORY_SLOTS, -1);
 randomize();
 inventory[0] = 0;
 inventory[1] = 0;
 inventory[2] = 1;