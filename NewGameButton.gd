extends Button

func _on_button_up() -> void:
	get_parent().hide()
	var options = get_node('/root/game/Menu/PanelContainer/GameOptions')
	options.show()
	
