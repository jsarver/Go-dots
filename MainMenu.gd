extends Control

func _input(event: InputEvent) -> void:
	if event.is_action_released("OpenMenu") :
		if Globals.game_started:
			var scene_name = get_tree().current_scene.name
			print(scene_name)

			if scene_name == 'game':
				
				show()
			
			if scene_name == 'Menu':
				hide()
