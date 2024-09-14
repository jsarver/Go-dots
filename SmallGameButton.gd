extends Button


func _on_button_up() -> void:
	get_parent().hide()
	var main = get_node('/root/main')
	main.setup_game(8,8)

