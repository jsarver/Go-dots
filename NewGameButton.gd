extends Button

signal start_game

func _on_button_up() -> void:
	var main = get_node('/root/main')
	main.setup_game()
	self.hide()
