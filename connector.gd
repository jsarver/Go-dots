extends Node2D
@export var max_length:float = 150
var dotline = preload('line.tscn')
var point1 : Vector2 = Vector2(0, 0)
var width : int = 10
var color : Color = Color.GREEN
var start: Vector2
var end: Vector2
var current_line : Node2D

func _process(_delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		if not current_line:
			pass
		else:
			var distance = start.distance_to(get_viewport().get_viewport().get_mouse_position())
			if distance < max_length:
				end = get_viewport().get_mouse_position()
		
			current_line.update_end(end)
		

func _on_dot_end_connection(position):
	current_line.update_end(position)
	


func _on_dot_start_connection(position):
	current_line = dotline.instantiate()
	start = position
	add_child(current_line)
	current_line.add_start(start)
	#current_line.line.points= PackedVector2Array([start,start])
	
