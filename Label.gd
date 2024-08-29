extends Label
@export var event_name : String

func _input(event):
	if event.is_pressed():
		text = event.as_text()
	
