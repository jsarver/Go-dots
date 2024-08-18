extends Node
var dot = preload("res://dot.tscn")
@export var columns :int 
@export var rows : int 
var dot_position : Vector2


#
#func setup_game():
	#for "res://dot.tscn"
# Called when the node enters the scene tree for the first time.
func _ready():

	var x_pos = 50
	var y_pos = 50
	for c in range(columns):
		for row in range(rows):
			y_pos += 150
			var next_dot = dot.instantiate()
			next_dot.position = Vector2(x_pos,y_pos)
			add_child(next_dot)
			print(next_dot.is_inside_tree())
		x_pos += 150
		y_pos = 50
	
## Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

