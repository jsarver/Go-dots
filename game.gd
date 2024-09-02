@tool

extends Node
@onready var dot = preload("res://dot.tscn")
#var connection = connector.instantiate()
@export var columns :int 
@export var rows : int 
@export var dot_distance:float = 150
@onready var max_length = dot_distance
var current_line : Line2D
var start : Vector2
var end : Vector2
@onready var connection = get_node('Connector')

func setup_game():
	
	#var connection = preload("res://connector.tscn").instantiate()
	var x_pos = dot_distance
	var y_pos = dot_distance
	for c in range(columns):
		print(rows)
		for row in range(rows):
			var next_dot = dot.instantiate()
			next_dot.position = Vector2(x_pos,y_pos)
			next_dot.start_connection.connect(connection._on_dot_start_connection)
			next_dot.end_connection.connect(connection._on_dot_end_connection)
			add_child(next_dot)
			y_pos += dot_distance
		x_pos += dot_distance
		y_pos = dot_distance

func _ready():
	setup_game()
	

