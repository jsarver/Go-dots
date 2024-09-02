extends Sprite2D
var lines_connected : Array

func _on_area_2d_area_entered(body: Node2D) -> void:
	
	if body.get_instance_id() not in lines_connected:
		lines_connected.append(body.get_instance_id())
	

func _on_area_2d_body_exited(body: Node2D) -> void:
	var instance_id = body.get_instance_id()
	if instance_id in lines_connected:
		var index = lines_connected.find(instance_id)
		if index >-1:
			lines_connected.remove_at(index)
		
