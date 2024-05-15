if (mouse_check_button_released(mb_right)){
//will check if the button is pressed if so it will move in the direction clicked 
target_x = mouse_x
target_y = mouse_y
move_towards_point(mouse_x,mouse_y,1);
// will move the player towards the mouse
}

mp_potential_step(target_x,target_y, 1, 1);


if(point_distance(x,y, target_x,target_y) < 5) { speed = 0; }
//will stop the player when it reaches point