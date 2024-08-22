extends Node2D
@export var max_length:float = 150
var point1 : Vector2 = Vector2(0, 0)
var width : int = 10
var color : Color = Color.GREEN
var _point2 : Vector2 
var start: Vector2
var stop: Vector2
var line = preload('res://dotline.tscn')

	#print(line)
func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var parent = get_node('/root/main')
		var mouse_position = get_viewport().get_mouse_position()
		point1 = parent.dot_position
		#print('in the line!')
		
		if mouse_position != _point2:
			_point2 = mouse_position
			queue_redraw()

func _draw():
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		draw_line(point1, _point2, color, width)
	else:
		var new_line = line.instantiate()
		stop = position
		new_line = Line2D.new()
		new_line.points = PackedVector2Array( [start, stop])
		
		add_child(new_line)
func _on_dot_end_connection(position):
	#queue_redraw()

	print('child added')
	

func _on_dot_start_connection(position):
	print('start connection',position)

	start = position
	
	

