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

func update_color():
	material.set_shader_parameter("new_color", color)

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:

		if is_pixel_opaque(get_local_mouse_position()):
			start_connection.emit(self.position)
			self.state = 'active'
			update_color()
			
	if event is InputEventMouseButton and event.is_released() and event.button_index == MOUSE_BUTTON_LEFT:
		
		if is_pixel_opaque(get_local_mouse_position()):
			#print('emitting!',self.position)
			end_connection.emit(self.position)
			state = 'active'
			update_color()
		
			
