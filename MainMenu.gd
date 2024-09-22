extends GridContainer

func _input(event):
	if event.is_action_pressed("open_menu"):
		self.show()
