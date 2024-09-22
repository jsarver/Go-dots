extends Button

signal start_game

func _on_button_up() -> void:
	get_parent().hide()
	var options = get_node('/root/Menu/MarginContainer/GameOptions')
	options.show()
	
