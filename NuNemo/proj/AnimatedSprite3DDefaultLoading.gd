extends AnimatedSprite3D

func _ready():
	get_parent().get_node("AnimatedSprite3DDefaultLoading").play()
