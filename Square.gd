extends Sprite2D
@onready var lines_connected : Array
var active: bool = 0

func _on_area_2d_area_entered(body) -> void:	
	if body.name == "Line2D":
		if body.get_instance_id() not in lines_connected:
			print('adding line', body, 'to square', self)
			lines_connected.append(body.get_instance_id())
			print(len(lines_connected))
			if len(lines_connected) >= 4:
				show()

func _on_area_2d_area_exited(body: Node2D) -> void:
	
	if body.name == "Line2D":
		var instance_id = body.get_instance_id()
		if instance_id in lines_connected:
			var index = lines_connected.find(instance_id)
			if index >-1:
				print('removing line', body, 'from square', self)
				lines_connected.remove_at(index)
				if len(lines_connected) < 4:
					hide()
		
