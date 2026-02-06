function move_piece(current_piece_position, move_right, move_left, move_up, move_down){
	
	// Figure out movement direction and update piece position
	
	if (move_right == true){
		current_piece_position[0] += 1;
	}
	else if (move_left == true){
		current_piece_position[0] -= 1;
	}
	else if (move_down == true){
		current_piece_position[1] += 1;	
	}
	else if (move_up == true){
		current_piece_position[1] -= 1;
	}
	
	// Update x and y positions
	
	x = global.initial_x_pos + current_piece_position[0]*global.step;
	y = global.initial_y_pos + current_piece_position[1]*global.step;

}
