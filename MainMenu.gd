extends Control

func toggle_menu():
	var menu = get_node("PanelContainer/MainMenu")
	menu.visible = !menu.visible
	visible = !visible
	print('toggle')
	

func _input(event: InputEvent) -> void:
	if event.is_action_released("OpenMenu") :
		if Globals.game_started:
			toggle_menu()
