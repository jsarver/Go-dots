extends Node2D
@export var max_length:float = 150
var point1 : Vector2 = Vector2(0, 0)
var width : int = 10
var color : Color = Color.GREEN
var start: Vector2
var end: Vector2
var current_line : Line2D


	#print(line)
#func _process(delta):
	#if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		#var end = get_viewport().get_mouse_position()
		#
	#if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):

		#var mouse_position = get_viewport().get_mouse_position()
		#point1 = parent.dot_position
		##print('in the line!')
		#
		#if mouse_position != _point2:
			#_point2 = mouse_position
			#queue_redraw()
#
#func _draw():
	#if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		#draw_line(start, _point2, color, width)
	#else:
		##var new_line = line.instantiate()
		##end = position
		##new_line = Line2D.new()
		##new_line.points = PackedVector2Array( [start, end])
		##
		##add_child(new_line)
#func _on_dot_end_connection(position):
	##queue_redraw()
	#end = position
	#current_line.points = PackedVector2Array([start,end])
	##parent.add_child(current_line)
	#print('child added')
	#
#
#func _on_dot_start_connection(position):
	#var parent = get_node('/root/main')
	#current_line = Line2D.new()
	#print(current_line.get_parent())
	#add_child(current_line)
	#print('start connection',position)
	#
	#print(current_line.get_parent())
	#start = position
	#end = position
	#current_line.add_point(start)
	#current_line.add_point(end)

	

