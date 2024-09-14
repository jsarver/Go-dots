extends Button


func _on_button_up() -> void:
	var main = get_node('/root/main')
	main.setup_game(40,40)
	get_parent().hide()
