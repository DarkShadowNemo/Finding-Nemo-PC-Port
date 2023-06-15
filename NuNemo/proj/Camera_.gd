extends Camera

func _ready():
	yield(get_tree().create_timer(5),"timeout")
	get_tree().change_scene("res://proj/PIXAR.tscn")
