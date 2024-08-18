extends Sprite2D
var state = 'unclicked'
var current_position = Vector2(0,0)
var color = Color.WHITE
var count = 0
@export var new_color = Color.BLACK	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass 
#
func _input(event):

	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		count += 1
		
		
		
		if get_rect().has_point(to_local(event.position)):
			print(state)	
			print(get_tree_string())
			var main =get_node('/root/main')
			main.dot_position = self.position
			print(self.position)
			#print("A click!", event.position,event.get_instance_id(),position,state)
			#current_position = to_local(event.position)
			color = Color.GREEN
			self.state = 'clicked'
		
			queue_redraw()
	if event is InputEventMouseButton and event.is_released() and event.button_index == MOUSE_BUTTON_LEFT:

		if get_rect().has_point(to_local(event.position)):
			print('relassed')
			color = Color.GREEN
			queue_redraw()
func _draw():
	var white : Color = Color.WHITE
	var godot_blue : Color = Color("478cbf")
	var grey : Color = Color("414042")
	print('drawing')

	# Four circles for the 2 eyes: 2 white, 2 grey.
	draw_circle(Vector2(current_position), 29.3905, color)

