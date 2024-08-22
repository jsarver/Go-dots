extends Sprite2D
var state = 'unclicked'
var current_position = Vector2(0,0)
@export var inactive_color = Color.WHITE
@export var active_color = Color.GREEN
var color = inactive_color
var count = 0
@export var new_color = Color.BLACK
signal start_connection (start_position)
signal end_connection (end_position)
var dot_event:Rect2
#
func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		count += 1
		
		if get_rect().has_point(to_local(event.position)):
			start_connection.emit(self.position)
			var main =get_node('/root/main')
			main.dot_position = self.position
			color = active_color
			self.state = 'clicked'
			queue_redraw()
			
	if event is InputEventMouseButton and event.is_released() and event.button_index == MOUSE_BUTTON_LEFT:
		
		if get_rect().has_point(to_local(event.position)):
			print('emitting!',self.position)
			end_connection.emit(self.position)
			color = active_color
		else:
			color = inactive_color
		
		queue_redraw()

func _draw():
	draw_circle(Vector2(current_position), 29.3905, color)

