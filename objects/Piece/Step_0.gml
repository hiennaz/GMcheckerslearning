move_left	= keyboard_check_pressed(vk_left)	and current_piece_position[0] != 0;
move_right	= keyboard_check_pressed(vk_right)	and current_piece_position[0] != 7;
move_up		= keyboard_check_pressed(vk_up)		and current_piece_position[1] != 0;
move_down	= keyboard_check_pressed(vk_down)	and current_piece_position[1] != 7;

moved = move_left or move_right or move_up or move_down;

if (moved == true and current_piece_state == piece_state.selected){
	
	move_piece(current_piece_position, move_right, move_left, move_up, move_down);	

}
