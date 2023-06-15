extends VideoPlayer

func _ready():
	get_parent().get_node("VideoPlayerPIXAR_").play()
