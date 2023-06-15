extends VideoPlayer

func _ready():
	get_parent().get_node("VideoPlayerLOADING_01").play()
	yield(get_tree().create_timer(4.565),"timeout")
	get_tree().change_scene("res://proj/Legal.tscn")
