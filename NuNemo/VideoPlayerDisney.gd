extends VideoPlayer

func _ready():
	get_parent().get_node("VideoPlayerDisney").play()
	yield(get_tree().create_timer(12.980),"timeout")
	get_tree().change_scene("res://proj/THQ.tscn")
