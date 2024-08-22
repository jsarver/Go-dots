extends Node
var dot = preload("res://dot.tscn")
var connector = preload("res://connector.tscn")
@export var columns :int 
@export var rows : int 
@export var dot_distance:int = 150
var dot_position : Vector2


#
#func setup_game():
	#for "res://dot.tscn"
# Called when the node enters the scene tree for the first time.
func _ready():
	

	var x_pos = 150
	var y_pos = 150
	for c in range(columns):
		for row in range(rows):
			var next_dot = dot.instantiate()
			var connection = connector.instantiate()
			add_child(connection)
			next_dot.position = Vector2(x_pos,y_pos)
			next_dot.start_connection.connect(connection._on_dot_start_connection)
			next_dot.end_connection.connect(connection._on_dot_end_connection)
			add_child(next_dot)
			y_pos += dot_distance
		x_pos += dot_distance
		y_pos = dot_distance


