tool
extends EditorPlugin

var oldttgamestxt


func _enter_tree():
	oldttgamestxt = preload("txt_importer_plugin.gd").new()
	add_import_plugin(oldttgamestxt)


func _exit_tree():
	remove_import_plugin(oldttgamestxt)
	oldttgamestxt = null
