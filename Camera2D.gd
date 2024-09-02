extends Camera2D
#
#func change_zoome(change_type):
	#if change_type == 'increase':
		#zoom += 1

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_WHEEL_UP:
		#print(event.button_index)
		
		zoom[0] += .2
		zoom[1] += .2
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
		zoom[0] -= .2
		zoom[1] -= .2
		
		 
