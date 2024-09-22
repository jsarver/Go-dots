extends GridContainer
@onready var g = get_node('/root/Globals')

func start_game():
	get_tree().change_scene_to_file("res://game.tscn")

func _on_small_button_up() -> void:
	Globals.columns = 4
	Globals.rows = 4
	start_game()
	
func _on_medium_button_up() -> void:
	Globals.columns = 8
	Globals.rows = 8
	start_game()
	
func _on_large_button_up() -> void:
	Globals.columns = 16
	Globals.rows = 16
	start_game()

