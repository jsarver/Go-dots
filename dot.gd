extends Sprite2D
var state = 'inactive'
var current_position = Vector2(0,0)
@export var inactive_color = Color.WHITE
@export var active_color = Color.GREEN
var color : Color:
	get:
		if state == 'active':
			return active_color
		else:
			return inactive_color
	
signal start_connection (start_position)
signal end_connection (end_position)
#
func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
	
		if is_pixel_opaque(get_local_mouse_position()):
			start_connection.emit(self.position)
			self.state = 'active'
			queue_redraw()
			
	if event is InputEventMouseButton and event.is_released() and event.button_index == MOUSE_BUTTON_LEFT:
		
		if is_pixel_opaque(get_local_mouse_position()):
			#print('emitting!',self.position)
			end_connection.emit(self.position)
			state = 'active'
			queue_redraw()

func _draw():
	#print('drawing')
	draw_circle(Vector2(current_position), 29.3905, color)

