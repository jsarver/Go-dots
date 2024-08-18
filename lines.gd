extends Node2D

var point1 : Vector2 = Vector2(0, 0)
var width : int = 10
var color : Color = Color.GREEN
var _point2 : Vector2 

#func
func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var parent = get_node('/root/main')
		var mouse_position = get_viewport().get_mouse_position()
		point1 = parent.dot_position
		print('in the line!')
		if mouse_position != _point2:
			_point2 = mouse_position
			queue_redraw()


func _draw():
	draw_line(point1, _point2, color, width)
