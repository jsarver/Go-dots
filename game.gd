@tool

extends Node
var dot = preload("res://dot.tscn")
var connector = preload("res://connector.tscn")
var connection = connector.instantiate()
@export var columns :int 
@export var rows : int 
@export var dot_distance:float = 150
@onready var max_length = dot_distance
var current_line : Line2D
var start : Vector2
var end : Vector2
#
func setup_game():
	var x_pos = dot_distance
	var y_pos = dot_distance
	for c in range(columns):
		print(rows)
		for row in range(rows):
			var next_dot = dot.instantiate()
			next_dot.position = Vector2(x_pos,y_pos)
			next_dot.start_connection.connect(_on_dot_start_connection)
			next_dot.end_connection.connect(_on_dot_end_connection)
			add_child(next_dot)
			y_pos += dot_distance
		x_pos += dot_distance
		y_pos = dot_distance

func _ready():
	setup_game()
	
func _process(_delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		if not current_line:
			pass
		else:
			if start.distance_to(get_viewport().get_viewport().get_mouse_position()) < max_length:
				end = get_viewport().get_mouse_position()
				print(start.distance_to(end))
			
			current_line.set_point_position(1, end)
		

func _on_dot_end_connection(position):
	current_line.set_point_position(1, position)
	
	

func _on_dot_start_connection(position):
	current_line = Line2D.new()
	add_child(current_line)
	start = position
	current_line.points= PackedVector2Array([start,start])
	
