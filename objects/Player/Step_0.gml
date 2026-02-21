//Dev Utils

//Create piece object 

create_white_piece = keyboard_check_pressed(vk_f1)
create_black_piece = keyboard_check_pressed(vk_f2)

if (create_black_piece or create_white_piece){
	
	var board = instance_find(Board, 0)
	create_piece(board.current_game_board_array, create_black_piece)
	
}

// Piece selector

switch_piece = keyboard_check_pressed(vk_tab)
