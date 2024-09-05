extends Node2D
@export var max_length:float = 128
var dotline = preload('line.tscn')
var point1 : Vector2 = Vector2(0, 0)
var width : int = 10
var color : Color = Color.GREEN
var start: Vector2
var end: Vector2
var current_line : Node2D

func _process(_delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var camera = get_viewport().get_camera_2d()
		if not current_line:
			pass
		else:
			var global_mouse_position = camera.get_global_mouse_position()
			var distance = start.distance_to(global_mouse_position)
			if distance < max_length:
				end = global_mouse_position
			current_line.update_end(end)
	else:
		if current_line and is_instance_valid(current_line):
			current_line.queue_free()

func _on_dot_end_connection(position):
	if current_line and is_instance_valid(current_line):
		current_line.update_end(position)
		current_line = null
	


func _on_dot_start_connection(position):
	var l = get_node('/root/main/Label2')
	l.text = str(position)
	current_line = dotline.instantiate()
	start = position
	add_child(current_line)
	current_line.add_start(start)
	#current_line.line.points= PackedVector2Array([start,start])

