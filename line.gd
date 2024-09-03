extends Node2D
@onready var line :Line2D = $Line2D
@onready var collision_shape :CollisionShape2D = get_node('Line2D/Line2D/CollisionShape2D')

func _ready():
	var segment = SegmentShape2D.new()
	segment.a = line.points[0]
	segment.b = line.points[1]
	if segment:
		collision_shape.shape = segment

func _process(delta):
	var segment = collision_shape.shape
	if segment is SegmentShape2D:
		segment.a = line.points[0]
		segment.b = line.points[1]


func add_start(position: Vector2):
	line.points = PackedVector2Array([position,position])

func update_end(position: Vector2):
	line.set_point_position(1, position)

func _on_area_2d_body_entered(body: Node2D) -> void:
	print('line entered',body) # Replace with function body.
