function create_piece(current_board_game_array, create_black_piece){
	
	//Use array to find empty board space
	
	target_board_space = [0, 0];
	
	while (current_board_game_array[target_board_space[0]][target_board_space[1]] != "empty"){
		
		if (target_board_space[0] = 7){
			
			target_board_space[1] += 1;
			target_board_space[0] = 0;
		
		}
		else{
		
			target_board_space[0] += 1;
			
		}
	}
	
	target_x = global.initial_x_pos + target_board_space[0]*global.step;
	target_y = global.initial_y_pos + target_board_space[1]*global.step;
	
	//Create piece object
	
	var created_object = instance_create_layer(target_x, target_y, "Instances", Piece)
	
	// Set variables and sprite depending on key pressed
	if (create_black_piece == true){
		
		created_object.current_piece_colour = piece_colour.black;
		created_object.sprite_index = black_piece;
	
	}
	else{
		
		created_object.current_piece_colour = piece_colour.white;
		created_object.sprite_index = white_piece;
		
	}
	
	created_object.current_piece_position = target_board_space;
	created_object.current_piece_state = piece_state.selected;
	current_board_game_array[target_board_space[0]][target_board_space[1]] = created_object;
	
	// Setting previous piece to idle so it doesn't move
	if (instance_number(Piece) > 1){
		var previous_piece = instance_find(Piece, instance_number(Piece) - 2);
		previous_piece.current_piece_state = piece_state.idle;
	}
	
	var player = instance_find(Player, 0);
	player.currently_selected_piece = created_object;

}