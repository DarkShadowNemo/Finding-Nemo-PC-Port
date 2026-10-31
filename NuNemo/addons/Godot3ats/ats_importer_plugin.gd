tool
extends EditorImportPlugin

const ATSResource = preload("res://addons/Godot3ats/MyAnimatedTextureSetResource.gd")

func get_importer_name():
	return "ats"
	
func get_visible_name():
	return "Finding Nemo ats"
	
func get_recognized_extensions():
	return ["ats"]

func get_priority():
	return 1.0
	
func get_import_order():
	return 0
	
func get_save_extension():
	return "tres"
	
func get_resource_type():
	return "Resource"

func get_preset_count():
	return 1
	
func get_preset_name(i):
	return "Default"
	
func get_import_options(preset):
	return []
	
	
func import(source_file, save_path, options, platform_variants, gen_files):
	var f = File.new()
	f.open(source_file, File.READ)
	var content = f.get_as_text()
	f.close()
	
	var resource = ATSResource.new()
	resource.text = content
	
	
	
	return ResourceSaver.save(save_path + ".tres", resource)
	
	
