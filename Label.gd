extends Label
@export var event_name : String
@onready var menu = get_node('/root/game/Menu/PanelContainer')

func _process(_delta):
	text = str(menu.position)
	
