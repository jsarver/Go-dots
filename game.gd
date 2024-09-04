

extends Node
@onready var dot = preload("res://dot.tscn")
@onready var square = preload("res://square.tscn")
#var connection = connector.instantiate()
@export var columns :int 
@export var rows : int 
@export var dot_distance:float = 150
var current_line : Line2D
var start : Vector2
var end : Vector2
@onready var connection = get_node('Connector')


func create_square(square_position: Vector2):
	var square_instance = square.instantiate()
	square_instance.position = square_position
	return square_instance

func create_dot(dot_position):
	var next_dot = dot.instantiate()
	next_dot.position = dot_position
	next_dot.start_connection.connect(connection._on_dot_start_connection)
	next_dot.end_connection.connect(connection._on_dot_end_connection)
	print('nextdot',next_dot)
	return next_dot

func add_row(item_type: String, item_count: int,start_position: Vector2, x_offset: int):
			
	for column in range(item_count):
		
		if item_type == 'dot':
			var item = create_dot(start_position)
			add_child(item)
		else:
			var item = create_square(start_position)
			add_child(item)
		start_position.x += x_offset
		

func setup_game():
	
	#var connection = preload("res://connector.tscn").instantiate()
	var x_pos = dot_distance
	var y_pos = dot_distance
	
		
	for row in range(rows):
		print('adding a row')
		add_row('dot',columns, Vector2(x_pos,y_pos),dot_distance)
		add_row('square',columns-1, Vector2((x_pos+64),(y_pos+64)),dot_distance)
		
		y_pos += dot_distance

func _ready():
	setup_game()
	
