extends VideoPlayer

func _ready():
	get_parent().get_node("VideoPlayerTT").play()
	yield(get_tree().create_timer(13.398),"timeout")
	get_tree().change_scene("res://proj/nemoLoading.tscn")
