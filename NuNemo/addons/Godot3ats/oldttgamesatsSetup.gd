tool
extends EditorPlugin

var oldttgamesats


func _enter_tree():
	oldttgamesats = preload("ats_importer_plugin.gd").new()
	add_import_plugin(oldttgamesats)


func _exit_tree():
	remove_import_plugin(oldttgamesats)
	oldttgamesats = null
