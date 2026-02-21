// Enums

enum piece_colour{
	white,
	black
}

enum piece_type{
	pawn,
	king
}

enum piece_state{
	idle,
	selected,
	promoted,
	captured
}

// Basic Board info

global.init_game_board_array = [

	["empty","empty","empty","empty","empty","empty","empty","empty"],
	["empty","empty","empty","empty","empty","empty","empty","empty"],
	["empty","empty","empty","empty","empty","empty","empty","empty"],
	["empty","empty","empty","empty","empty","empty","empty","empty"],
	["empty","empty","empty","empty","empty","empty","empty","empty"],
	["empty","empty","empty","empty","empty","empty","empty","empty"],
	["empty","empty","empty","empty","empty","empty","empty","empty"],
	["empty","empty","empty","empty","empty","empty","empty","empty"]
	
]

// Basic Piece Info

global.initial_x_pos = 40
global.initial_y_pos = 8
global.step = 40