extends Node

var columns: int = 4
var rows: int = 4
@onready var game_started: bool = false

func start_game():
	game_started = true
	var menu = get_node('/root/game/Menu')
	menu.hide()
